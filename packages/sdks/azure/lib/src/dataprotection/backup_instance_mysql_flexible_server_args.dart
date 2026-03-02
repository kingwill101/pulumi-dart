// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_instance_mysql_flexible_server_backup_instance_mysql_flexible_server_args_doc}
/// The set of arguments for BackupInstanceMysqlFlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_mysql_flexible_server_backup_instance_mysql_flexible_server_args_doc}
class BackupInstanceMysqlFlexibleServerArgs {
  /// The ID of the Backup Policy.
  final pulumi.Input<String> backupPolicyId;
  /// The location of the source database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Backup Instance for the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the source server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The ID of the Backup Vault within which the MySQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstanceMysqlFlexibleServerArgs].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [location] The location of the source database. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Instance for the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [serverId] The ID of the source server. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the MySQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  BackupInstanceMysqlFlexibleServerArgs({
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

  factory BackupInstanceMysqlFlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceMysqlFlexibleServerArgs(
      backupPolicyId: (map['backupPolicyId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: (map['serverId'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

