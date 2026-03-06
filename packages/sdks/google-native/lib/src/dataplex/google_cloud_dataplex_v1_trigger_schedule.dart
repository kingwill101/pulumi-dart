// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The scan is scheduled to run periodically.
class GoogleCloudDataplexV1TriggerSchedule {
  /// Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To explicitly set a timezone in the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database (wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)). For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.This field is required for Schedule scans.
  final pulumi.Input<String> cron;

  /// Creates a new [GoogleCloudDataplexV1TriggerSchedule].
  /// [cron] Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To explicitly set a timezone in the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database (wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)). For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.This field is required for Schedule scans.
  const GoogleCloudDataplexV1TriggerSchedule({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cron': cron,
    };
  }

  factory GoogleCloudDataplexV1TriggerSchedule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TriggerSchedule(
      cron: pulumi.Input.fromValue(map['cron'] as String),
    );
  }
}

