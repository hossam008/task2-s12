 import 'appointments.dart';
import 'chunkedappointments.dart';
import 'nextappointment.dart';

class Data {
   late final List<Appointments> appointments;
   late final ChunkedAppointments chunkedAppointments;
   late final num id,numOfMonths,status,subscribeNum;
   late final NextAppointment nextAppointment;
   late final String startAt,subscriptionDuration,endAt;
   Data.fromJson(Map<String,dynamic>json){
     appointments = List.from(json["appointments"]??[]).map((e) => Appointments.fromJson(e)).toList();
     chunkedAppointments = ChunkedAppointments.fromJson(json["chunked_appointments"]?? {});
     nextAppointment = NextAppointment.fromJson(json["next_appointment"]?? {});
     id = json["id"] ?? 0 ;
     numOfMonths = json["num_of_months"] ?? 0 ;
     status = json["status"] ?? 0 ;
     subscribeNum = json["subscribe_num"] ?? 0 ;
     startAt = json["start_at"] ?? "" ;
     subscriptionDuration = json["subscription_duration"] ?? "" ;
     endAt = json["end_at"] ?? "" ;
   }

}