// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadProtectionPolicyBackup {
  /// The backup frequency for the VM Workload Backup Policy. Possible values are `Daily` and `Weekly`.
  final pulumi.Input<String>? frequency;
  /// The backup frequency in minutes for the VM Workload Backup Policy. Possible values are `15`, `30`, `60`, `120`, `240`, `480`, `720` and `1440`.
  final pulumi.Input<int>? frequencyInMinutes;
  /// The time of day to perform the backup in 24hour format.
  final pulumi.Input<String>? time;
  /// The days of the week to perform backups on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  final pulumi.Input<List<String>>? weekdays;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyBackup].
  /// [frequency] The backup frequency for the VM Workload Backup Policy. Possible values are `Daily` and `Weekly`.
  /// [frequencyInMinutes] The backup frequency in minutes for the VM Workload Backup Policy. Possible values are `15`, `30`, `60`, `120`, `240`, `480`, `720` and `1440`.
  /// [time] The time of day to perform the backup in 24hour format.
  /// [weekdays] The days of the week to perform backups on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  const PolicyVMWorkloadProtectionPolicyBackup({
    this.frequency,
    this.frequencyInMinutes,
    this.time,
    this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'frequencyInMinutes': ?frequencyInMinutes,
      'time': ?time,
      'weekdays': ?weekdays,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyBackup.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicyBackup(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequencyInMinutes: (() { final guardedValue = map['frequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weekdays: (() { final guardedValue = map['weekdays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

