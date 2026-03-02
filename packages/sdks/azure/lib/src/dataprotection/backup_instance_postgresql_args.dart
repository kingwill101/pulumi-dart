// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_instance_postgresql_backup_instance_postgresql_args_doc}
/// The set of arguments for BackupInstancePostgresql.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_postgresql_backup_instance_postgresql_args_doc}
class BackupInstancePostgresqlArgs {
  /// The ID of the Backup Policy.
  final pulumi.Input<String> backupPolicyId;
  /// The ID or versionless ID of the key vault secret which stores the connection string of the database.
  final pulumi.Input<String>? databaseCredentialKeyVaultSecretId;
  /// The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String> databaseId;
  /// The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstancePostgresqlArgs].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [databaseCredentialKeyVaultSecretId] The ID or versionless ID of the key vault secret which stores the connection string of the database.
  /// [databaseId] The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  /// [location] The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  /// [name] The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created.
  /// [vaultId] The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
  BackupInstancePostgresqlArgs({
    required this.backupPolicyId,
    this.databaseCredentialKeyVaultSecretId,
    required this.databaseId,
    this.location,
    this.name,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'databaseCredentialKeyVaultSecretId': ?databaseCredentialKeyVaultSecretId,
      'databaseId': databaseId,
      'location': ?location,
      'name': ?name,
      'vaultId': vaultId,
    };
  }

  factory BackupInstancePostgresqlArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstancePostgresqlArgs(
      backupPolicyId: (map['backupPolicyId'] as String).input(),
      databaseCredentialKeyVaultSecretId: map['databaseCredentialKeyVaultSecretId'] == null ? null : (map['databaseCredentialKeyVaultSecretId']! as String).input(),
      databaseId: (map['databaseId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

