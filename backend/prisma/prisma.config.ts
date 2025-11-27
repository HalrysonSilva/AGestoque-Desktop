import { defineConfig } from 'prisma/config'

export default defineConfig({
  schema: './schema.prisma',
  datasource: {
    url: "sqlserver://sa:123@.;database=Servsic",
  },
})