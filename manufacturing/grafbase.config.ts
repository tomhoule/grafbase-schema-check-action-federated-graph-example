import { connector, graph, config } from '@grafbase/sdk'

const g = graph.Standalone({ subgraph: true })

// Data Sources - https://grafbase.com/docs/connectors
//
const pg = connector.Postgres('pg', { url: g.env('DATABASE_URL') })
g.datasource(pg)

// Resolvers - https://grafbase.com/docs/resolvers
//
// g.query('helloWorld', {
//   returns: g.string(),
//   resolver: 'hello-world',
// })

export default config({
  graph: g,
})
