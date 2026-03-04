// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAutoBackupManualSchedule {
  /// A list of days on which backup can take place. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`
  ///
  /// &gt; **Note:** `days_of_week` can only be specified when `manual_schedule` is set to `Weekly`
  final pulumi.Input<List<String>>? daysOfWeeks;

  /// Frequency of full backups. Valid values include `Daily` or `Weekly`.
  final pulumi.Input<String> fullBackupFrequency;

  /// Start hour of a given day during which full backups can take place. Valid values are from `0` to `23`.
  final pulumi.Input<int> fullBackupStartHour;

  /// Duration of the time window of a given day during which full backups can take place, in hours. Valid values are between `1` and `23`.
  final pulumi.Input<int> fullBackupWindowInHours;

  /// Frequency of log backups, in minutes. Valid values are from `5` to `60`.
  final pulumi.Input<int> logBackupFrequencyInMinutes;

  /// Creates a new [VirtualMachineAutoBackupManualSchedule].
  /// [daysOfWeeks] A list of days on which backup can take place. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`
  /// [fullBackupFrequency] Frequency of full backups. Valid values include `Daily` or `Weekly`.
  /// [fullBackupStartHour] Start hour of a given day during which full backups can take place. Valid values are from `0` to `23`.
  /// [fullBackupWindowInHours] Duration of the time window of a given day during which full backups can take place, in hours. Valid values are between `1` and `23`.
  /// [logBackupFrequencyInMinutes] Frequency of log backups, in minutes. Valid values are from `5` to `60`.
  VirtualMachineAutoBackupManualSchedule({
    this.daysOfWeeks,
    required this.fullBackupFrequency,
    required this.fullBackupStartHour,
    required this.fullBackupWindowInHours,
    required this.logBackupFrequencyInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': ?daysOfWeeks,
      'fullBackupFrequency': fullBackupFrequency,
      'fullBackupStartHour': fullBackupStartHour,
      'fullBackupWindowInHours': fullBackupWindowInHours,
      'logBackupFrequencyInMinutes': logBackupFrequencyInMinutes,
    };
  }

  factory VirtualMachineAutoBackupManualSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineAutoBackupManualSchedule(
      daysOfWeeks: (() {
        final guardedValue = map['daysOfWeeks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fullBackupFrequency: pulumi.Input.fromValue(
        map['fullBackupFrequency'] as String,
      ),
      fullBackupStartHour: pulumi.Input.fromValue(
        map['fullBackupStartHour'] as int,
      ),
      fullBackupWindowInHours: pulumi.Input.fromValue(
        map['fullBackupWindowInHours'] as int,
      ),
      logBackupFrequencyInMinutes: pulumi.Input.fromValue(
        map['logBackupFrequencyInMinutes'] as int,
      ),
    );
  }
}
