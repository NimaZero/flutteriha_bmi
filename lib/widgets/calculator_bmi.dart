import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    //dar package dart:math tavan ba kalame kelidi pow namayesh dade mishavad.
    _bmi = weight / pow(height / 100, 2);
    //gerd kardane adade ashari
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return 'وزن ایده آل';
    } else if (_bmi! >= 25 && _bmi! <= 29.9) {
      return 'اضافه وزن';
    } else if (_bmi! >= 30 && _bmi! <= 34.9) {
      return 'چاق';
    } else if (_bmi! >= 35) {
      return 'خیلی چاق';
    } else {
      return 'کمبود وزن';
    }
  }

  //inja mitooni rejime ghazaii ro benevisi
  String getInterPretation() {
    if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return 'جوون چه بدنی';
    } else if (_bmi! >= 25 && _bmi! <= 29.9) {
      return 'یکم کمتر بخوری وزنت ایده آل میشه';
    } else if (_bmi! >= 30 && _bmi! <= 34.9) {
      return 'یکم رعایت کن داری زشت میشی';
    } else if (_bmi! >= 35) {
      return 'از امروز غذای چرب رو نذاری کنار من میدونم و تو';
    } else {
      return 'شبیه چوب کبریت شدی یکم بیشتر بخور';
    }
  }
}
