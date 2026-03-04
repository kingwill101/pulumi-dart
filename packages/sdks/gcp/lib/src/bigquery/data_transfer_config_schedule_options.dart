// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTransferConfigScheduleOptions {
  /// If true, automatic scheduling of data transfer runs for this
  /// configuration will be disabled. The runs can be started on ad-hoc
  /// basis using transferConfigs.startManualRuns API. When automatic
  /// scheduling is disabled, the TransferConfig.schedule field will
  /// be ignored.
  final pulumi.Input<bool>? disableAutoScheduling;

  /// Defines time to stop scheduling transfer runs. A transfer run cannot be
  /// scheduled at or after the end time. The end time can be changed at any
  /// moment. The time when a data transfer can be triggered manually is not
  /// limited by this option.
  final pulumi.Input<String>? endTime;

  /// Specifies time to start scheduling transfer runs. The first run will be
  /// scheduled at or after the start time according to a recurrence pattern
  /// defined in the schedule string. The start time can be changed at any
  /// moment. The time when a data transfer can be triggered manually is not
  /// limited by this option.
  final pulumi.Input<String>? startTime;

  /// Creates a new [DataTransferConfigScheduleOptions].
  /// [disableAutoScheduling] If true, automatic scheduling of data transfer runs for this
  /// [endTime] Defines time to stop scheduling transfer runs. A transfer run cannot be
  /// [startTime] Specifies time to start scheduling transfer runs. The first run will be
  DataTransferConfigScheduleOptions({
    this.disableAutoScheduling,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutoScheduling': ?disableAutoScheduling,
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory DataTransferConfigScheduleOptions.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigScheduleOptions(
      disableAutoScheduling: (() {
        final guardedValue = map['disableAutoScheduling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
