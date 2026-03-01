// ignore_for_file: unused_element, unnecessary_cast


class AccountQueuePropertiesMinuteMetrics {
  /// Indicates whether metrics should generate summary statistics for called API operations.
  final bool? includeApis;
  /// Specifies the number of days that logs will be retained.
  final int? retentionPolicyDays;
  /// The version of storage analytics to configure.
  final String version;

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
      includeApis: map['includeApis'] == null ? null : map['includeApis'] as bool,
      retentionPolicyDays: map['retentionPolicyDays'] == null ? null : map['retentionPolicyDays'] as int,
      version: map['version'] as String,
    );
  }
}

