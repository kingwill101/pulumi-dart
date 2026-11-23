// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_config_schedule_options_v2_event_driven_schedule.dart';

class DataTransferConfigScheduleOptionsV2 {
  /// Event-driven transfer schedule options. If set, the transfer will be
  /// scheduled upon events arriving.
  final pulumi.Input<DataTransferConfigScheduleOptionsV2EventDrivenSchedule> eventDrivenSchedule;

  /// Creates a new [DataTransferConfigScheduleOptionsV2].
  /// [eventDrivenSchedule] Event-driven transfer schedule options. If set, the transfer will be
  const DataTransferConfigScheduleOptionsV2({
    required this.eventDrivenSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventDrivenSchedule': pulumi.Input.mapInputValue<DataTransferConfigScheduleOptionsV2EventDrivenSchedule, Map<String, dynamic>>(eventDrivenSchedule, (value) => value.toMap()),
    };
  }

  factory DataTransferConfigScheduleOptionsV2.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigScheduleOptionsV2(
      eventDrivenSchedule: pulumi.Input.fromValue(DataTransferConfigScheduleOptionsV2EventDrivenSchedule.fromMap((map['eventDrivenSchedule']! as Map).cast<String, dynamic>())),
    );
  }
}
