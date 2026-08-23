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
  const BackupInstancePostgresqlFlexibleServerArgs({
    required this.backupPolicyId,
    this.location,
    this.name,
    required this.serverId,
    required this.vaultId,
  });

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
      backupPolicyId: pulumi.Input.fromValue(map['backupPolicyId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}
