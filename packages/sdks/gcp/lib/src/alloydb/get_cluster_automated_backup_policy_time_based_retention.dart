// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAutomatedBackupPolicyTimeBasedRetention {
  /// The retention period.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> retentionPeriod;

  /// Creates a new [GetClusterAutomatedBackupPolicyTimeBasedRetention].
  /// [retentionPeriod] The retention period.
  const GetClusterAutomatedBackupPolicyTimeBasedRetention({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': retentionPeriod,
    };
  }

  factory GetClusterAutomatedBackupPolicyTimeBasedRetention.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyTimeBasedRetention(
      retentionPeriod: pulumi.Input.fromValue(map['retentionPeriod'] as String),
    );
  }
}

