module.exports = {
    db: {
        user: 'postgres',
        host: 'localhost',
        database: 'wellnes_web',
        password: 'password',
        port: 5432,
    },
    port: {
        server: 8790,

    },
    // url: 'http://13.251.179.27', //change to the corresponding when deploying,
    url: 'http://localhost:8080', //change to the corresponding when deploying,
    token: {
        key: 'USER_KEY',
    },


}