class Calculation {
  String text = '';
  String history = '';

  double firstOperand = 0;
  double secondOperand = 0;
  String operation = '';
  String prevOperation = '';
  double result = 0;
  void calcuFunc(String btn) {
    if (btn == 'AC') {
      text = '';
      history = '';
      result = 0;
      firstOperand = 0;
      secondOperand = 0;
      prevOperation = '';
    } else if (btn == 'C') {
      if (text.length > 1) {
        String a = text.substring(0, text.length - 1);
        text = a;
      }
    } else if ((operation == '+' ||
            operation == '-' ||
            operation == 'x' ||
            operation == '/' ||
            operation == '%') &&
        (btn == '+' || btn == '-' || btn == 'x' || btn == '/' || btn == '%')) {
      secondOperand = double.parse(text);
      if (operation == '+') {
        result = firstOperand + secondOperand;
      } else if (operation == '-') {
        result = firstOperand - secondOperand;
      } else if (operation == 'x') {
        result = firstOperand * secondOperand;
      } else if (operation == '/') {
        result = firstOperand / secondOperand;
      } else if (operation == '%') {
        result = firstOperand % secondOperand;
      }
      prevOperation = operation;
      operation = btn;
      String a = doesContainDecimal(result.toString());
      history = a + operation;
      firstOperand = result;
      text = '';
    } else if (btn == '+' ||
        btn == '-' ||
        btn == 'x' ||
        btn == '/' ||
        btn == '%') {
      firstOperand = double.parse(text);
      operation = btn;
      history = text + btn;
      text = '';
    } else if (btn == '=') {
      secondOperand = double.parse(text);

      if (operation == '+') {
        result = firstOperand + secondOperand;
      } else if (operation == '-') {
        result = firstOperand - secondOperand;
      } else if (operation == 'x') {
        result = firstOperand * secondOperand;
      } else if (operation == '/') {
        result = firstOperand / secondOperand;
      } else if (operation == '%') {
        result = firstOperand % secondOperand;
      }
      prevOperation = operation;
      operation = btn;
      history += text;
      String a = doesContainDecimal(result.toString());
      text = a;
    } else {
      text += btn;
    }
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)) {
        return result = splitDecimal[0].toString();
      }
    }
    return result;
  }
}
