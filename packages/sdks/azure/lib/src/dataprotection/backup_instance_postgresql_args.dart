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
    required pulumi.Output<String> backupPolicyId,
    pulumi.Output<String>? databaseCredentialKeyVaultSecretId,
    required pulumi.Output<String> databaseId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> vaultId,
  }) :
      backupPolicyId = pulumi.Input.asInput<String>(backupPolicyId),
      databaseCredentialKeyVaultSecretId = pulumi.Input.asOptionalInput<String>(databaseCredentialKeyVaultSecretId),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      vaultId = pulumi.Input.asInput<String>(vaultId);

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
      backupPolicyId: pulumi.Output.create<String>(map['backupPolicyId'] as String),
      databaseCredentialKeyVaultSecretId: map['databaseCredentialKeyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['databaseCredentialKeyVaultSecretId'] as String),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

