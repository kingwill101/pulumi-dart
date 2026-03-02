// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAutomatedBackupPolicyTimeBasedRetention {
  /// The retention period.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [ClusterAutomatedBackupPolicyTimeBasedRetention].
  /// [retentionPeriod] The retention period.
  ClusterAutomatedBackupPolicyTimeBasedRetention({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory ClusterAutomatedBackupPolicyTimeBasedRetention.fromMap(Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyTimeBasedRetention(
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as String).input(),
    );
  }
}

