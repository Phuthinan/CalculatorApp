int symbolOrder(String x) {
  switch (x) {
    case '+':
      return 1;
    case '-':
      return 1;
    case '*':
      return 2;
    case '/':
      return 2;
    case '%':
      return 2;
    default:
      return 0;
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

String Calculate(String num1, String operator, String num2) {
  switch (operator) {
    case '+':
      return (double.parse(num1) + double.parse(num2)).toString();
    case '-':
      return (double.parse(num1) - double.parse(num2)).toString();
    case '*':
      return (double.parse(num1) * double.parse(num2)).toString();
    case '/':
      return (double.parse(num1) / double.parse(num2)).toStringAsFixed(3);
    default:
      return 'error';
  }
  if (num2 == '') {
    return 'error';
  }
}

bool IsOperator(String operator) {
  if (operator == '+' ||
      operator == '-' ||
      operator == '*' ||
      operator == '/' ||
      operator == '×' ||
      operator == '÷') {
    return true;
  } else {
    return false;
  }
}

String CalProcess(List<String> data) {
  int prevOrder = 0;

  List<String> value = [];
  List<String> symbol = [];
  String sum = '';
  bool checknum = true;

  for (int i = 0; i < data.length; i++) {
//     print(data[i]);
    if (sum == 'error') {
      break;
    } else {
      if (IsOperator(data[i])) {
        if (symbol.isEmpty) {
          symbol.add(data[i]);
          prevOrder = symbolOrder(data[i]);
        } else {
          if (prevOrder < symbolOrder(data[i])) {
            sum = Calculate(value.last, data[i], data[i + 1]);
            value.removeLast();
            i++;
            value.add(sum);
            prevOrder = symbolOrder(symbol.first);
          } else if (prevOrder > symbolOrder(data[i]) ||
              prevOrder == symbolOrder(data[i])) {
            sum = Calculate(value.first, symbol.first, value.last);
            value.clear();
            symbol.clear();
            value.add(sum);
            symbol.add(data[i]);
            prevOrder = symbolOrder(data[i]);
          }
        }
      } else {
        value.add(data[i]);
      }
      if (i == data.length - 1) {
        if (value.length == 1) {
          if (i == 0) {
            sum = data[i];
          } else {
            sum = 'error';
            value.clear();
            symbol.clear();
          }
        } else {
          sum = Calculate(value.first, symbol.first, value.last);
          value.clear();
          symbol.clear();
        }
      }
    }
//     print('data'+i.toString()+' ' +sum);
  }
  return sum;
}

String ReData(String amount) {
  String data = '';
  for (int i = 0; i < amount.length; i++) {
    if (amount[i] == '÷') {
      data += '/';
    } else if (amount[i] == '×') {
      data += '*';
    } else if (amount[i] == '%') {
      data += '/100';
    } else {
      data += amount[i];
    }
  }
  return data;
}

String FinalCal(String amount) {
  late String ans;
  List<String> data = [];
  amount = ReData(amount);
  data = DataSpilt(amount);
  ans = CalProcess(data);
  // print("yoooo" + ans);
  return ans;
}
