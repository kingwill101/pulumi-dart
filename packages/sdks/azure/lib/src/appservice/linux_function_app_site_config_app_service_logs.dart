// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppSiteConfigAppServiceLogs {
  /// The amount of disk space to use for logs. Valid values are between `25` and `100`. Defaults to `35`.
  final int? diskQuotaMb;
  /// The retention period for logs in days. Valid values are between `0` and `99999`.(never delete).
  ///
  /// > **Note:** This block is not supported on Consumption plans.
  final int? retentionPeriodDays;

  /// Creates a new [LinuxFunctionAppSiteConfigAppServiceLogs].
  /// [diskQuotaMb] The amount of disk space to use for logs. Valid values are between `25` and `100`. Defaults to `35`.
  /// [retentionPeriodDays] The retention period for logs in days. Valid values are between `0` and `99999`.(never delete).
  LinuxFunctionAppSiteConfigAppServiceLogs({
    this.diskQuotaMb,
    this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': ?diskQuotaMb,
      'retentionPeriodDays': ?retentionPeriodDays,
    };
  }

  factory LinuxFunctionAppSiteConfigAppServiceLogs.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSiteConfigAppServiceLogs(
      diskQuotaMb: map['diskQuotaMb'] == null ? null : map['diskQuotaMb'] as int,
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : map['retentionPeriodDays'] as int,
    );
  }
}

