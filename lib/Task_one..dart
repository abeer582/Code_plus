void Student(){
  const String studentName     = "Bob";
  const String studentEmail    = "bob@gmail.com";
  const int    studentAge      = 21;
  const String studentPhone    = "01012345678";
  const String studentNatID    = "30112251234567";
  const String studentUni      = "Cairo University";
  const double studentGpa      = 3.75;
  const String? studentAddress = null;
  final String displayAddress  = studentAddress ?? "Address Not Provided";
  print("Name:$studentName");
  print("Email: $studentEmail");
  print("Age: $studentAge years old");
  print("Phone Number: $studentPhone");
  print("National ID: $studentNatID");
  print("Address: $displayAddress");
  print("University: $studentUni");
  print("GPA: $studentGpa / 4.00");


}