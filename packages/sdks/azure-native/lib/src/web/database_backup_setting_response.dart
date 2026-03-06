// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database backup settings.
class DatabaseBackupSettingResponse {
  /// Contains a connection string to a database which is being backed up or restored. If the restore should happen to a new database, the database name inside is the new one.
  final pulumi.Input<String>? connectionString;
  /// Contains a connection string name that is linked to the SiteConfig.ConnectionStrings.
  /// This is used during restore with overwrite connection strings options.
  final pulumi.Input<String>? connectionStringName;
  /// Database type (e.g. SqlAzure / MySql).
  final pulumi.Input<String> databaseType;
  final pulumi.Input<String>? name;

  /// Creates a new [DatabaseBackupSettingResponse].
  /// [connectionString] Contains a connection string to a database which is being backed up or restored. If the restore should happen to a new database, the database name inside is the new one.
  /// [connectionStringName] Contains a connection string name that is linked to the SiteConfig.ConnectionStrings.
  /// [databaseType] Database type (e.g. SqlAzure / MySql).
  /// [name] Optional.
  const DatabaseBackupSettingResponse({
    this.connectionString,
    this.connectionStringName,
    required this.databaseType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'connectionStringName': ?connectionStringName,
      'databaseType': databaseType,
      'name': ?name,
    };
  }

  factory DatabaseBackupSettingResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseBackupSettingResponse(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStringName: (() { final guardedValue = map['connectionStringName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

