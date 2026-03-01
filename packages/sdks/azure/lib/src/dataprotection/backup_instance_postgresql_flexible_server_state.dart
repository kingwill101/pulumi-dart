// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupInstancePostgresqlFlexibleServer resources.
class BackupInstancePostgresqlFlexibleServerState {
  /// The ID of the Backup Policy.
  final pulumi.Input<String>? backupPolicyId;
  /// The location of the source database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Backup Instance for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protection state of the Backup Instance PostgreSQL Flexible Server.
  final pulumi.Input<String>? protectionState;
  /// The ID of the source server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The ID of the Backup Vault within which the PostgreSQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupInstancePostgresqlFlexibleServerState].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [location] The location of the source database. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Instance for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  /// [protectionState] The protection state of the Backup Instance PostgreSQL Flexible Server.
  /// [serverId] The ID of the source server. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the PostgreSQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  BackupInstancePostgresqlFlexibleServerState({
    pulumi.Output<String>? backupPolicyId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionState,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? vaultId,
  }) :
      backupPolicyId = pulumi.Input.asOptionalInput<String>(backupPolicyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionState = pulumi.Input.asOptionalInput<String>(protectionState),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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

  factory BackupInstancePostgresqlFlexibleServerState.fromMap(Map<String, dynamic> map) {
    return BackupInstancePostgresqlFlexibleServerState(
      backupPolicyId: map['backupPolicyId'] == null ? null : pulumi.Output.create<String>(map['backupPolicyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionState: map['protectionState'] == null ? null : pulumi.Output.create<String>(map['protectionState'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

