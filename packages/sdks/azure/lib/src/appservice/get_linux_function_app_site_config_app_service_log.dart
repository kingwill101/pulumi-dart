// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppSiteConfigAppServiceLog {
  /// The amount of disk space used for logs.
  final pulumi.Input<int> diskQuotaMb;

  /// After how many days backups are deleted.
  final pulumi.Input<int> retentionPeriodDays;

  /// Creates a new [GetLinuxFunctionAppSiteConfigAppServiceLog].
  /// [diskQuotaMb] The amount of disk space used for logs.
  /// [retentionPeriodDays] After how many days backups are deleted.
  GetLinuxFunctionAppSiteConfigAppServiceLog({
    required this.diskQuotaMb,
    required this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': diskQuotaMb,
      'retentionPeriodDays': retentionPeriodDays,
    };
  }

  factory GetLinuxFunctionAppSiteConfigAppServiceLog.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLinuxFunctionAppSiteConfigAppServiceLog(
      diskQuotaMb: pulumi.Input.fromValue(map['diskQuotaMb'] as int),
      retentionPeriodDays: pulumi.Input.fromValue(
        map['retentionPeriodDays'] as int,
      ),
    );
  }
}
