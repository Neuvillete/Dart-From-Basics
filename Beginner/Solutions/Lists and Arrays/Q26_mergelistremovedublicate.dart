import 'dart:io';

void main() {
  print("Enter the number of elements in the first list:");
  int n1 = int.parse(stdin.readLineSync()!);

  List<int> list1 = [];
  print("Enter the elements for the first list:");
  for (int i = 0; i < n1; i++) {
    int element = int.parse(stdin.readLineSync()!);
    list1.add(element);
  }

  print("Enter the number of elements in the second list:");
  int n2 = int.parse(stdin.readLineSync()!);

  List<int> list2 = [];
  print("Enter the elements for the second list:");
  for (int i = 0; i < n2; i++) {
    int element = int.parse(stdin.readLineSync()!);
    list2.add(element);
  }

  List<int> mergedList = [];

  for (int i = 0; i < list1.length; i++) {
    mergedList.add(list1[i]);
  }

  for (int i = 0; i < list2.length; i++) {
    mergedList.add(list2[i]);
  }

  List<int> uniqueList = [];
  for (int i = 0; i < mergedList.length; i++) {
    int j;
    for (j = 0; j < uniqueList.length; j++) {
      if (mergedList[i] == uniqueList[j]) {
        break;
      }
    }

    if (j == uniqueList.length) {
      uniqueList.add(mergedList[i]);
    }
  }

  print("Merged list after removing duplicates:");
  for (int element in uniqueList) {
    print(element);
  }
}
