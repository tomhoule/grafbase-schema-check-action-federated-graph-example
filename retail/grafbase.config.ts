import { connector, graph, config } from '@grafbase/sdk'

const g = graph.Standalone({ subgraph: true })

 const pg2 = connector.Postgres('pgretail', { url: g.env('DATABASE_URL') })
 g.datasource(pg2)

export default config({
  graph: g,
})
