// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse {
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final pulumi.Input<String> cron;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse].
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cron': cron};
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse(
      cron: pulumi.Input.fromValue(map['cron'] as String),
    );
  }
}
