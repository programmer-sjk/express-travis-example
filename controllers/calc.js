const Calc = require('../models/calc/calc');

exports.calc_controller = (req, res) => {
    const ret = Calc.plus(1,3).toString()
    res.send(ret)
}
