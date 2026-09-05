// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSlotSiteConfigAppServiceLogs {
  /// The amount of disk space to use for logs. Valid values are between `25` and `100`. Defaults to `35`.
  final pulumi.Input<int?>? diskQuotaMb;
  /// The retention period for logs in days. Valid values are between `0` and `99999`.(never delete).
  ///
  /// &gt; **Note:** This block is not supported on Consumption plans.
  final pulumi.Input<int?>? retentionPeriodDays;

  /// Creates a new [WindowsFunctionAppSlotSiteConfigAppServiceLogs].
  /// [diskQuotaMb] The amount of disk space to use for logs. Valid values are between `25` and `100`. Defaults to `35`.
  /// [retentionPeriodDays] The retention period for logs in days. Valid values are between `0` and `99999`.(never delete).
  const WindowsFunctionAppSlotSiteConfigAppServiceLogs({
    this.diskQuotaMb,
    this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': ?diskQuotaMb,
      'retentionPeriodDays': ?retentionPeriodDays,
    };
  }

  factory WindowsFunctionAppSlotSiteConfigAppServiceLogs.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotSiteConfigAppServiceLogs(
      diskQuotaMb: (() { final guardedValue = map['diskQuotaMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      retentionPeriodDays: (() { final guardedValue = map['retentionPeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
