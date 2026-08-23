// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_flexible_server_backup_flexible_server_backup_args_doc}
/// The set of arguments for FlexibleServerBackup.
/// {@endtemplate}
/// {@macro pulumi_postgresql_flexible_server_backup_flexible_server_backup_args_doc}
class FlexibleServerBackupArgs {
  /// Specifies the name of this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;

  /// Creates a new [FlexibleServerBackupArgs].
  /// [name] Specifies the name of this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  /// [serverId] The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  const FlexibleServerBackupArgs({
    this.name,
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serverId': serverId,
    };
  }

  factory FlexibleServerBackupArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerBackupArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
    );
  }
}
