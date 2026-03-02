// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountQueuePropertiesMinuteMetrics {
  /// Indicates whether metrics should generate summary statistics for called API operations.
  final pulumi.Input<bool>? includeApis;
  /// Specifies the number of days that logs will be retained.
  final pulumi.Input<int>? retentionPolicyDays;
  /// The version of storage analytics to configure.
  final pulumi.Input<String> version;

  /// Creates a new [AccountQueuePropertiesMinuteMetrics].
  /// [includeApis] Indicates whether metrics should generate summary statistics for called API operations.
  /// [retentionPolicyDays] Specifies the number of days that logs will be retained.
  /// [version] The version of storage analytics to configure.
  AccountQueuePropertiesMinuteMetrics({
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
      includeApis: map['includeApis'] == null ? null : (map['includeApis']! as bool).input(),
      retentionPolicyDays: map['retentionPolicyDays'] == null ? null : (map['retentionPolicyDays']! as int).input(),
      version: (map['version'] as String).input(),
    );
  }
}

