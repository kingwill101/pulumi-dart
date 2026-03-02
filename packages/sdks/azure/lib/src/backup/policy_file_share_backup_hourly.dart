// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyFileShareBackupHourly {
  /// Specifies the interval at which backup needs to be triggered. Possible values are `4`, `6`, `8` and `12`.
  final pulumi.Input<int> interval;
  /// Specifies the start time of the hourly backup. The time format should be in 24-hour format. Times must be either on the hour or half hour (e.g. 12:00, 12:30, 13:00, etc.).
  final pulumi.Input<String> startTime;
  /// Species the duration of the backup window in hours. Details could be found [here](https://learn.microsoft.com/en-us/azure/backup/backup-azure-files-faq#what-does-the-duration-attribute-in-azure-files-backup-policy-signify-).
  final pulumi.Input<int> windowDuration;

  /// Creates a new [PolicyFileShareBackupHourly].
  /// [interval] Specifies the interval at which backup needs to be triggered. Possible values are `4`, `6`, `8` and `12`.
  /// [startTime] Specifies the start time of the hourly backup. The time format should be in 24-hour format. Times must be either on the hour or half hour (e.g. 12:00, 12:30, 13:00, etc.).
  /// [windowDuration] Species the duration of the backup window in hours. Details could be found [here](https://learn.microsoft.com/en-us/azure/backup/backup-azure-files-faq#what-does-the-duration-attribute-in-azure-files-backup-policy-signify-).
  PolicyFileShareBackupHourly({
    required this.interval,
    required this.startTime,
    required this.windowDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'startTime': startTime,
      'windowDuration': windowDuration,
    };
  }

  factory PolicyFileShareBackupHourly.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareBackupHourly(
      interval: (map['interval'] as int).input(),
      startTime: (map['startTime'] as String).input(),
      windowDuration: (map['windowDuration'] as int).input(),
    );
  }
}

