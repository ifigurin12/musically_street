import 'package:musically_street/models/musicant.dart';
import 'package:musically_street/models/place.dart';

class Performance 
{
  DateTime startPerformance; 
  DateTime endPerformance; 
  Place placePerformance; 
  Musicant musicant; 

  Performance({required this.startPerformance, required this.endPerformance, required this.placePerformance, required this.musicant});
}