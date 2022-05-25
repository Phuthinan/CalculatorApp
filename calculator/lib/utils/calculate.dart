import 'package:intl/intl.dart';

String ReData(String amount) {
  String data = '';
  for (int i = 0; i < amount.length; i++) {
    if (amount[i] == '%') {
      data += '÷100';
    } else {
      data += amount[i];
    }
  }
  return data;
}

int symbolOrder(String x) {
  switch (x) {
    case '+':
      return 1;
    case '-':
      return 1;
    case '×':
      return 2;
    case '÷':
      return 2;
    default:
      return 0;
  }
}

bool IsOperator(String operator) {
  if (operator == '+' ||
      operator == '-' ||
      operator == '×' ||
      operator == '÷') {
    return true;
  } else {
    return false;
  }
}

List<String> DataSpilt(String amount) {
  List<String> data = [];
  String val = '';

  for (var i = 0; i < amount.length; i++) {
    if (IsOperator(amount[i])) {
      data.add(val);
      data.add(amount[i]);
      val = '';
    } else {
      val += amount[i];
//       print(val);
    }
    if (i == amount.length - 1) {
      if (val == '') {
        print('error');
      } else {
        data.add(val);
      }
    }
  }
  return data;
}

class ReturnData {
  bool isError;
  String sum;
  ReturnData({required this.isError, required this.sum});
}

ReturnData FinalCal(String amount) {
  bool isError = false;
  double CalProcess(List<String> data) {
    double Calculate(double num1, String operator, double num2) {
      switch (operator) {
        case '+':
          return num1 + num2;
        case '-':
          return num1 - num2;
        case '×':
          return num1 * num2;
        case '÷':
          return num1 / num2;
        default:
          isError = true;
          return 0;
      }
    }

    int prevOrder = 0;

    List<double> value = [];
    List<String> symbol = [];
    double sum = 0;
    for (int i = 0; i < data.length; i++) {
      if (isError) {
        isError = false;
        break;
      } else {
        if (IsOperator(data[i])) {
          if (symbol.isEmpty) {
            symbol.add(data[i]);
            prevOrder = symbolOrder(data[i]);
          } else {
            if (prevOrder < symbolOrder(data[i])) {
              sum = Calculate(value.last, data[i], double.parse(data[i + 1]));
              value.removeLast();
              i++;
              value.add(sum);
              prevOrder = symbolOrder(symbol.first);
            } else {
              sum = Calculate(value.first, symbol.first, value.last);
              value.clear();
              symbol.clear();
              value.add(sum);
              symbol.add(data[i]);
              prevOrder = symbolOrder(data[i]);
            }
          }
        } else {
          value.add(double.parse(data[i]));
        }
        if (i == data.length - 1) {
          if (value.length == 1) {
            if (i == 0) {
              sum = double.parse(data[i]);
            } else {
              //case have only value and operator

              isError = true;
            }
          } else {
            sum = Calculate(value.first, symbol.first, value.last);
            value.clear();
            symbol.clear();
          }
        }
      }
    }

    return sum;
  }

  late double ans;
  List<String> data = [];
  amount = ReData(amount);
  data = DataSpilt(amount);
  ans = CalProcess(data);

  return ReturnData(
      isError: isError, sum: NumberFormat("#,###.##").format(ans));
}
