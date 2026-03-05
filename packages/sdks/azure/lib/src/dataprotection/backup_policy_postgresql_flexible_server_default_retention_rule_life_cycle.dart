// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle {
  /// The type of data store. The only possible value is `VaultStore`. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataStoreType;
  /// The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  final pulumi.Input<String> duration;

  /// Creates a new [BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle].
  /// [dataStoreType] The type of data store. The only possible value is `VaultStore`. Changing this forces a new resource to be created.
  /// [duration] The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreType': dataStoreType,
      'duration': duration,
    };
  }

  factory BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycle(
      dataStoreType: pulumi.Input.fromValue(map['dataStoreType'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
    );
  }
}

