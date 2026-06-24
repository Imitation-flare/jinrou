module.exports =
  name: "月下人狼"
  http:
    port: process.env.PORT || 8800
    secure: null
  ws:
    connect: null
  mongo:
    uri: process.env.MONGO_URI
  redis:
    host: process.env.REDIS_HOST
    port: process.env.REDIS_PORT
    pass: process.env.REDIS_PASS
    tls: true
  admin:
    password: "admin"
    securityHole: false
  maintenance:
    password: "admin"
    script: ["echo done"]
  backdoor:
    home: "https://example.com/"
  application:
    url: "https://example.com/"
    modes: []
  twitter:
    enable: false
  weibo:
    enable: false
  rooms:
    fresh: 24*3
    suddenDeathBAN: 360
  user:
    dataOpenBarrier: 30
  maxlength:
    user:
      name: 50
      comment: 1024
      icon: 300
      mail: 300
    room:
      name: 100
      comment: 300
    game:
      comment: 4096
  game:
    Poet:
      poemStyle: [5, 7, 5]
  logging: false
  language:
    value: "ja"
    fallback: "ja"
  front:
    publicPath: "/front-assets/"
    notSupportedPage: null
    legacyBuilds: process.env.NODE_ENV == 'production'
  additionalMeta: []
  reportForm:
    enable: false
  shareButton:
    twitter: false
