// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_automated_backup_config_fixed_frequency_schedule.dart';

class GetInstanceAutomatedBackupConfig {
  /// Trigger automated backups at a fixed frequency.
  final pulumi.Input<List<GetInstanceAutomatedBackupConfigFixedFrequencySchedule>> fixedFrequencySchedules;
  /// How long to keep automated backups before the backups are deleted.
  /// The value should be between 1 day and 365 days. If not specified, the default value is 35 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s". The default_value is "3024000s"
  final pulumi.Input<String> retention;

  /// Creates a new [GetInstanceAutomatedBackupConfig].
  /// [fixedFrequencySchedules] Trigger automated backups at a fixed frequency.
  /// [retention] How long to keep automated backups before the backups are deleted.
  GetInstanceAutomatedBackupConfig({
    required this.fixedFrequencySchedules,
    required this.retention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedFrequencySchedules': pulumi.Input.mapInputValue<List<GetInstanceAutomatedBackupConfigFixedFrequencySchedule>, List<Map<String, dynamic>>>(fixedFrequencySchedules, (value) => pulumi.Input.encodeList<GetInstanceAutomatedBackupConfigFixedFrequencySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retention': retention,
    };
  }

  factory GetInstanceAutomatedBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutomatedBackupConfig(
      fixedFrequencySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceAutomatedBackupConfigFixedFrequencySchedule>(map['fixedFrequencySchedules']!, (value) => GetInstanceAutomatedBackupConfigFixedFrequencySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      retention: pulumi.Input.fromValue(map['retention'] as String),
    );
  }
}

