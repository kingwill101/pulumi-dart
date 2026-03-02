// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupInstanceMysqlFlexibleServer resources.
class BackupInstanceMysqlFlexibleServerState {
  /// The ID of the Backup Policy.
  final pulumi.Input<String>? backupPolicyId;
  /// The location of the source database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Backup Instance for the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protection state of the Backup Instance MySQL Flexible Server.
  final pulumi.Input<String>? protectionState;
  /// The ID of the source server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The ID of the Backup Vault within which the MySQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupInstanceMysqlFlexibleServerState].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [location] The location of the source database. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Instance for the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [protectionState] The protection state of the Backup Instance MySQL Flexible Server.
  /// [serverId] The ID of the source server. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the MySQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  BackupInstanceMysqlFlexibleServerState({
    this.backupPolicyId,
    this.location,
    this.name,
    this.protectionState,
    this.serverId,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'location': ?location,
      'name': ?name,
      'protectionState': ?protectionState,
      'serverId': ?serverId,
      'vaultId': ?vaultId,
    };
  }

  factory BackupInstanceMysqlFlexibleServerState.fromMap(Map<String, dynamic> map) {
    return BackupInstanceMysqlFlexibleServerState(
      backupPolicyId: map['backupPolicyId'] == null ? null : (map['backupPolicyId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

