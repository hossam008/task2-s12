class Appointments {
  late String appointmentDate,appointmentDateTime,appointmentDuration,
              endAtTime,meetingLink,startAtTime;
  late bool isEditable;
  late num id;
  Appointments.fromJson(Map<String,dynamic>json){
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