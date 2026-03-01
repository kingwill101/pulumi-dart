// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_instance_postgresql_flexible_server_backup_instance_postgresql_flexible_server_args_doc}
/// The set of arguments for BackupInstancePostgresqlFlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_postgresql_flexible_server_backup_instance_postgresql_flexible_server_args_doc}
class BackupInstancePostgresqlFlexibleServerArgs {
  /// The ID of the Backup Policy.
  final pulumi.Input<String> backupPolicyId;
  /// The location of the source database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Backup Instance for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the source server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The ID of the Backup Vault within which the PostgreSQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstancePostgresqlFlexibleServerArgs].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [location] The location of the source database. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Instance for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  /// [serverId] The ID of the source server. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the PostgreSQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  BackupInstancePostgresqlFlexibleServerArgs({
    required pulumi.Output<String> backupPolicyId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> serverId,
    required pulumi.Output<String> vaultId,
  }) :
      backupPolicyId = pulumi.Input.asInput<String>(backupPolicyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asInput<String>(serverId),
      vaultId = pulumi.Input.asInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'location': ?location,
      'name': ?name,
      'serverId': serverId,
      'vaultId': vaultId,
    };
  }

  factory BackupInstancePostgresqlFlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstancePostgresqlFlexibleServerArgs(
      backupPolicyId: pulumi.Output.create<String>(map['backupPolicyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: pulumi.Output.create<String>(map['serverId'] as String),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

