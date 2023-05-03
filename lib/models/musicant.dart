import 'package:musically_street/models/comment.dart';

class Musicant {
  String groupName; 
  String groupDescription; 
  List<String>? imagesUrl; 
  List<Comment>? comments; 

  Musicant(List<String>? imageUrl, List<Comment>? comments, {required this.groupName, required this.groupDescription});
}