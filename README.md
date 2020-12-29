# shirasagi-docker

CMSであるSHIRASAGIのDocker環境テンプレート

```shell
docker-compose build
docker-compose up
rake db:drop
rake db:create_indexes
rake ss:create_site data='{ name: "デモ", host: "demo", domains: "localhost:3000" }'
rake db:seed site=demo name=demo
rake ss:create_user data='{ name: "システム管理者", email: "sys@example.jp", password: "pass" }'
```

## mongoid.ymlの設定

```yml
development:
  clients:
    default:
      database: ss
      hosts:
        - mongodb:27017
```
