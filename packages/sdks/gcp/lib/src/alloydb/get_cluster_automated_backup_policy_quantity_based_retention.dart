// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAutomatedBackupPolicyQuantityBasedRetention {
  /// The number of backups to retain.
  final pulumi.Input<int> count;

  /// Creates a new [GetClusterAutomatedBackupPolicyQuantityBasedRetention].
  /// [count] The number of backups to retain.
  GetClusterAutomatedBackupPolicyQuantityBasedRetention({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory GetClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyQuantityBasedRetention(
      count: (map['count'] as int).input(),
    );
  }
}

