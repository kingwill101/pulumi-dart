// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSiteConfigAppServiceLogs {
  /// The amount of disk space to use for logs. Valid values are between `25` and `100`. Defaults to `35`.
  final pulumi.Input<int>? diskQuotaMb;
  /// The retention period for logs in days. Valid values are between `0` and `99999`.(never delete).
  ///
  /// > **Note:** This block is not supported on Consumption plans.
  final pulumi.Input<int>? retentionPeriodDays;

  /// Creates a new [WindowsFunctionAppSiteConfigAppServiceLogs].
  /// [diskQuotaMb] The amount of disk space to use for logs. Valid values are between `25` and `100`. Defaults to `35`.
  /// [retentionPeriodDays] The retention period for logs in days. Valid values are between `0` and `99999`.(never delete).
  WindowsFunctionAppSiteConfigAppServiceLogs({
    this.diskQuotaMb,
    this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': ?diskQuotaMb,
      'retentionPeriodDays': ?retentionPeriodDays,
    };
  }

  factory WindowsFunctionAppSiteConfigAppServiceLogs.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSiteConfigAppServiceLogs(
      diskQuotaMb: map['diskQuotaMb'] == null ? null : (map['diskQuotaMb']! as int).input(),
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : (map['retentionPeriodDays']! as int).input(),
    );
  }
}

