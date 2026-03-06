// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final pulumi.Input<int> hours;
  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final pulumi.Input<int>? minutes;
  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final pulumi.Input<int>? nanos;
  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final pulumi.Input<int>? seconds;

  /// Creates a new [ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  /// [minutes] Minutes of hour of day. Currently, only the value 0 is supported.
  /// [nanos] Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  /// [seconds] Seconds of minutes of the time. Currently, only the value 0 is supported.
  const ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime({
    required this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': ?minutes,
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

