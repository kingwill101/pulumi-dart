// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppSiteConfigAppServiceLog {
  /// The amount of disk space to use for logs.
  final pulumi.Input<int> diskQuotaMb;
  /// After how many days backups is deleted.
  final pulumi.Input<int> retentionPeriodDays;

  /// Creates a new [GetWindowsFunctionAppSiteConfigAppServiceLog].
  /// [diskQuotaMb] The amount of disk space to use for logs.
  /// [retentionPeriodDays] After how many days backups is deleted.
  GetWindowsFunctionAppSiteConfigAppServiceLog({
    required this.diskQuotaMb,
    required this.retentionPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuotaMb': diskQuotaMb,
      'retentionPeriodDays': retentionPeriodDays,
    };
  }

  factory GetWindowsFunctionAppSiteConfigAppServiceLog.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigAppServiceLog(
      diskQuotaMb: pulumi.Input.fromValue(map['diskQuotaMb'] as int),
      retentionPeriodDays: pulumi.Input.fromValue(map['retentionPeriodDays'] as int),
    );
  }
}

