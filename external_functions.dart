part of 'main.dart';

@JS('sum')
external set _sum(int Function(int a, int b) f);
@JS('sub')
external set _sub(int Function(int a, int b) f);
@JS('div')
external set _div(int Function(int a, int b) f);
@JS('mul')
external set _mul(int Function(int a, int b) f);

void config() {
  var calculate = Calculate();
  _sum = allowInterop(calculate.sum);
  _sub = allowInterop(calculate.sub);
  _div = allowInterop(calculate.div);
  _mul = allowInterop(calculate.mul);
}
