import { connector, graph, config } from '@grafbase/sdk'

const g = graph.Standalone({ subgraph: true })

 const pg = connector.Postgres('pg', { url: g.env('DATABASE_URL') })
 g.datasource(pg)

export default config({
  graph: g,
})
