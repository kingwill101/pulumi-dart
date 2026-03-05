// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureOnlineStoreFeatureviewSyncConfig {
  /// If true, syncs the FeatureView in a continuous manner to Online Store.
  final pulumi.Input<bool>? continuous;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  /// To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}".
  final pulumi.Input<String>? cron;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewSyncConfig].
  /// [continuous] If true, syncs the FeatureView in a continuous manner to Online Store.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  AiFeatureOnlineStoreFeatureviewSyncConfig({
    this.continuous,
    this.cron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuous': ?continuous,
      'cron': ?cron,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewSyncConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewSyncConfig(
      continuous: (() { final guardedValue = map['continuous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

