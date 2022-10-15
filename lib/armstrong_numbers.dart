

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    String toStringNumber = number.toString();
    if (toStringNumber.length == 1) {
      return true;
    } else {
      List<String> numberList = toStringNumber.split('');
      int sum=0;
      var result = numberList.map((e) {
        int value = int.parse(e);
        return sum += value ^ numberList.length;
      });

      return result == number ? true : false;
    }
  }
}
