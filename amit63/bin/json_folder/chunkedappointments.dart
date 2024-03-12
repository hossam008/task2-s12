class ChunkedAppointments {
late List<Month1> month1;
late List<Month2> month2;
ChunkedAppointments.fromJson(Map<String,dynamic>json){
  month1 = List.from(json["month_1"]??[]).map((e) => Month1.fromJSon(e)).toList();
  month2 = List.from(json["month_2"]??[]).map((e) => Month2.fromJSon(e)).toList();
}
}
class Month1 {

  late String appointmentDate,appointmentDateTime,appointmentDuration,
      endAtTime,meetingLink,startAtTime;
  late bool isEditable;
  late num id;
  Month1.fromJSon(Map<String,dynamic>json){
    appointmentDate = json["appointment_date"]??"";
    appointmentDateTime = json["appointment_date_time"]??"";
    appointmentDuration = json["appointment_duration"]??"";
    endAtTime = json["end_at_time"]??"";
    meetingLink = json["meeting_link"]??"";
    startAtTime = json["start_at_time"]??"";
    isEditable = json["is_editable"]?? false;
    id = json["id"]??0;
  }

}
class Month2 {
  late String appointmentDate,appointmentDateTime,appointmentDuration,
      endAtTime,meetingLink,startAtTime;
  late bool isEditable;
  late num id;
  Month2.fromJSon(Map<String,dynamic>json){
    appointmentDate = json["appointment_date"]??"";
    appointmentDateTime = json["appointment_date_time"]??"";
    appointmentDuration = json["appointment_duration"]??"";
    endAtTime = json["end_at_time"]??"";
    meetingLink = json["meeting_link"]??"";
    startAtTime = json["start_at_time"]??"";
    isEditable = json["is_editable"]?? false;
    id = json["id"]??0;
  }
}