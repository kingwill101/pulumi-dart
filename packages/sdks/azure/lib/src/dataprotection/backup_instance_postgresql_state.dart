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
    this.backupPolicyId,
    this.databaseCredentialKeyVaultSecretId,
    this.databaseId,
    this.location,
    this.name,
    this.protectionState,
    this.vaultId,
  });

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
      backupPolicyId: (() { final guardedValue = map['backupPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseCredentialKeyVaultSecretId: (() { final guardedValue = map['databaseCredentialKeyVaultSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

