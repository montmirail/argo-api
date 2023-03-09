import express from 'express';

const app = express();

app.get('/', (req, res, next) => {
    res.json({
        alive: true,
    });

    return next();
});

app.listen('3000', () => {
    console.log('App started on port 3000.');
});
