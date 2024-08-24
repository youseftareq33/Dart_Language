import 'dart:io';

void main() async{
  String filePath = '/Dart/Dart_Basic/intro_9_testFile.txt';

  for(;;){
    print("Please chosse operation:");
    print("1) Read File");
    print("2) Write Inside File");
    print("3) Delete File Content");
    print("4) Exit");
    print("Operation number: ");
    int? op_num=int.parse(stdin.readLineSync()!);

    while(op_num!=1 && op_num!=2 && op_num!=3 && op_num!=4){
      print("invalid input !!!");

      print("Please chosse operation:");
      print("1) Read File");
      print("2) Write Inside File");
      print("3) Delete File Content");
      print("4) Exit");
      print("Operation number: ");

      op_num=int.parse(stdin.readLineSync()!);
    }

    switch(op_num){
      case(1):
        print("File Text: ");
        await readFile(filePath);
        break;

      case(2):
        print("Write Text: ");
        String? text=stdin.readLineSync()!;
        await writeFile(filePath, text);
        break;

      case(3):
        await deleteFileContent(filePath);
        break;

      case(4):
        print("Program Closed");
        exit(0);  
    }

    print("=============================================="+"\n");
  }
 
}


readFile(String filePath) async {
  File file = File(filePath);

  if (await file.exists()) {
    String fileContent = await file.readAsString();
    print(fileContent);
  } else {
    print("File not found: $filePath");
  }
}

writeFile(String filePath, String content) async {
  File file = File(filePath);

  if(await file.length()==0){
    await file.writeAsString(content, mode: FileMode.append);
  }
  else{
    await file.writeAsString("\n"+content, mode: FileMode.append);
  }
  
}

deleteFileContent(String filePath) async {
  File file = File(filePath);

  await file.writeAsString("", mode: FileMode.write);
}