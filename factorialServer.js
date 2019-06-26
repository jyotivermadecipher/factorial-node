const express =  require('express');
const app = express();
var cors = require('cors');
const path = require('path');

const factorialaddon = require('./build/Release/factorialaddon.node');
app.use(cors());

app.use(express.static(__dirname + '/factorialbuild'));

app.get('/getFactorial',(req,res) => {
    var number = req.param('number');
    console.log("Number" ,number);
    var result = factorialaddon.factorial(parseInt(number));
    let data = { factorial : result};
    res.send(data);
})
app.get('/', (req, res) => {

});

app.listen(4204, () => {
    console.log("Server started successfully!");
})
