// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountQueuePropertiesMinuteMetrics {
  /// Indicates whether metrics should generate summary statistics for called API operations.
  final pulumi.Input<bool?>? includeApis;
  /// Specifies the number of days that logs will be retained.
  final pulumi.Input<int?>? retentionPolicyDays;
  /// The version of storage analytics to configure.
  final pulumi.Input<String> version;

  /// Creates a new [AccountQueuePropertiesMinuteMetrics].
  /// [includeApis] Indicates whether metrics should generate summary statistics for called API operations.
  /// [retentionPolicyDays] Specifies the number of days that logs will be retained.
  /// [version] The version of storage analytics to configure.
  const AccountQueuePropertiesMinuteMetrics({
    this.includeApis,
    this.retentionPolicyDays,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeApis': ?includeApis,
      'retentionPolicyDays': ?retentionPolicyDays,
      'version': version,
    };
  }

  factory AccountQueuePropertiesMinuteMetrics.fromMap(Map<String, dynamic> map) {
    return AccountQueuePropertiesMinuteMetrics(
      includeApis: (() { final guardedValue = map['includeApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionPolicyDays: (() { final guardedValue = map['retentionPolicyDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
