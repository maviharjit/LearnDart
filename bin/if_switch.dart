void if_statement() {
  int i;
  for (i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print('$i is even');
    } else {
      print('$i is odd');
    }
  }
}

void switch_statement() {
  int i;

  for(i=0;i<6;i++) {
    switch(i) {
      case 0 :
        print('Zero');
        break;
      case 1 :
        print('One');
        break;
      case 2 :
        print('Two');
        break;
      case 3 :
        print('Three');
        break;
      case 4 :
        print('Four');
        break;
      default:
        print('Default response');
    }
  }
}
