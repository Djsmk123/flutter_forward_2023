void main(List<String> args) {
  // if else
  int age = 21;
  if (age > 18) {
    print('You are eligible to vote');
  } else {
    print('You are not eligible to vote');
  }

  // switch case
  int day = 1;
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
  // Ternary Operator
  print(age > 18 ? 'You are eligible to vote' : 'You are not eligible to vote');
}
