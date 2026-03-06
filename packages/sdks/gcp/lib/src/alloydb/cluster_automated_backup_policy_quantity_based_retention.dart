// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAutomatedBackupPolicyQuantityBasedRetention {
  /// The number of backups to retain.
  final pulumi.Input<int>? count;

  /// Creates a new [ClusterAutomatedBackupPolicyQuantityBasedRetention].
  /// [count] The number of backups to retain.
  const ClusterAutomatedBackupPolicyQuantityBasedRetention({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyQuantityBasedRetention(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

