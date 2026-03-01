// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupInstancePostgresql resources.
class BackupInstancePostgresqlState {
  /// The ID of the Backup Policy.
  final pulumi.Input<String>? backupPolicyId;
  /// The ID or versionless ID of the key vault secret which stores the connection string of the database.
  final pulumi.Input<String>? databaseCredentialKeyVaultSecretId;
  /// The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String>? databaseId;
  /// The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String>? name;
  /// The protection state of the Backup Instance PostgreSQL.
  final pulumi.Input<String>? protectionState;
  /// The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupInstancePostgresqlState].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [databaseCredentialKeyVaultSecretId] The ID or versionless ID of the key vault secret which stores the connection string of the database.
  /// [databaseId] The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  /// [location] The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  /// [name] The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created.
  /// [protectionState] The protection state of the Backup Instance PostgreSQL.
  /// [vaultId] The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
  BackupInstancePostgresqlState({
    pulumi.Output<String>? backupPolicyId,
    pulumi.Output<String>? databaseCredentialKeyVaultSecretId,
    pulumi.Output<String>? databaseId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionState,
    pulumi.Output<String>? vaultId,
  }) :
      backupPolicyId = pulumi.Input.asOptionalInput<String>(backupPolicyId),
      databaseCredentialKeyVaultSecretId = pulumi.Input.asOptionalInput<String>(databaseCredentialKeyVaultSecretId),
      databaseId = pulumi.Input.asOptionalInput<String>(databaseId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionState = pulumi.Input.asOptionalInput<String>(protectionState),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'databaseCredentialKeyVaultSecretId': ?databaseCredentialKeyVaultSecretId,
      'databaseId': ?databaseId,
      'location': ?location,
      'name': ?name,
      'protectionState': ?protectionState,
      'vaultId': ?vaultId,
    };
  }

  factory BackupInstancePostgresqlState.fromMap(Map<String, dynamic> map) {
    return BackupInstancePostgresqlState(
      backupPolicyId: map['backupPolicyId'] == null ? null : pulumi.Output.create<String>(map['backupPolicyId'] as String),
      databaseCredentialKeyVaultSecretId: map['databaseCredentialKeyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['databaseCredentialKeyVaultSecretId'] as String),
      databaseId: map['databaseId'] == null ? null : pulumi.Output.create<String>(map['databaseId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionState: map['protectionState'] == null ? null : pulumi.Output.create<String>(map['protectionState'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

