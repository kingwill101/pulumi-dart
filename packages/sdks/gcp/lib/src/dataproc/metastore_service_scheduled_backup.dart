// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreServiceScheduledBackup {
  /// A Cloud Storage URI of a folder, in the format gs://&lt;bucket_name&gt;/&lt;path_inside_bucket&gt;. A sub-folder &lt;backup_folder&gt; containing backup files will be stored below it.
  final pulumi.Input<String> backupLocation;
  /// The scheduled interval in Cron format, see https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup is not enabled. Must be specified to enable scheduled backups.
  final pulumi.Input<String?>? cronSchedule;
  /// Defines whether the scheduled backup is enabled. The default value is false.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is UTC.
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [MetastoreServiceScheduledBackup].
  /// [backupLocation] A Cloud Storage URI of a folder, in the format gs://&lt;bucket_name&gt;/&lt;path_inside_bucket&gt;. A sub-folder &lt;backup_folder&gt; containing backup files will be stored below it.
  /// [cronSchedule] The scheduled interval in Cron format, see https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup is not enabled. Must be specified to enable scheduled backups.
  /// [enabled] Defines whether the scheduled backup is enabled. The default value is false.
  /// [timeZone] Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is UTC.
  const MetastoreServiceScheduledBackup({
    required this.backupLocation,
    this.cronSchedule,
    this.enabled,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupLocation': backupLocation,
      'cronSchedule': ?cronSchedule,
      'enabled': ?enabled,
      'timeZone': ?timeZone,
    };
  }

  factory MetastoreServiceScheduledBackup.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceScheduledBackup(
      backupLocation: pulumi.Input.fromValue(map['backupLocation'] as String),
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
