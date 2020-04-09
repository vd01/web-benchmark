const redis = require("redis")
const { promisify } = require("util")

const CONNECTS = 5000
const MAX_REQUESTS = 500000
const SLEEP_MS = 1*1000

let requests = 0;
let max_rt = 0;
let client_err = 0;

const program_begin = new Date()

async function do_sleep(ms) {
  return new Promise( resolve => setTimeout(resolve, ms))
}

async function do_request(client) {
  const getAsync = promisify(client.get).bind(client)
  const setAsync = promisify(client.set).bind(client)
  const begin = new Date()
  const ret1 = await setAsync("test1111", "this is a test!!")
  //console.log("set return:", ret1)
  const ret2 = await getAsync("test1111")
  //console.log("set return:", ret2)
  const run_ms = new Date()-begin
  //console.log("use time: %dms", run_ms)
  if( run_ms > max_rt ) {
    max_rt = run_ms;
  }
}

async function run() {
  const client = redis.createClient({password: "redisServer3.2.8", })
  client.on('error', function(err) {
    console.log(err)
    client_err ++
  })
  while(true) {
    //await do_sleep(SLEEP_MS)
    await do_request(client)
    requests ++;
    //console.log(`#${requests} requests finished`)
    if( requests % 1000 == 0 ) { 
      console.log(`#${requests} requests finished`)
    }
    if( requests >= MAX_REQUESTS ) {
      const total_ms = new Date() - program_begin
      console.info('Execution time: %dms; avg_time: %fms, max_rt: %dms', total_ms, total_ms/MAX_REQUESTS, max_rt)
      console.info('Errors count: %d', client_err)
      process.exit()
    }
  }
}


async function main() {
  for(i=0; i<CONNECTS; i++) {
    if( i % 1000 == 0 ) { 
      console.log("connect #%d", i)
      //await do_sleep(1)
    }
    run().catch( err => { console.log(err) } )
  }
}

main()
