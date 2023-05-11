import 'package:musically_street/models/comment.dart';

class Musicant {
  String groupName; 
  String groupDescription; 
  List<String> imagesUrl; 
  List<Comment> comments; 

  Musicant( {required this.groupName, required this.groupDescription, required this.imagesUrl, required this.comments,});
}