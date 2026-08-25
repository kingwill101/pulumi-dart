// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties_db_home_database_properties_database_management_config.dart';
import 'db_system_properties_db_home_database_properties_db_backup_config.dart';

class DbSystemPropertiesDbHomeDatabaseProperties {
  /// The configuration of the Database Management service.
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig?>? databaseManagementConfig;
  /// Backup Options for the Database.
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig?>? dbBackupConfig;
  /// The Oracle Database version.
  final pulumi.Input<String> dbVersion;
  /// (Output)
  /// State of the Database.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// BACKUP_IN_PROGRESS
  /// UPGRADING
  /// CONVERTING
  /// TERMINATING
  /// TERMINATED
  /// RESTORE_FAILED
  /// FAILED
  final pulumi.Input<String?>? state;

  /// Creates a new [DbSystemPropertiesDbHomeDatabaseProperties].
  /// [databaseManagementConfig] The configuration of the Database Management service.
  /// [dbBackupConfig] Backup Options for the Database.
  /// [dbVersion] The Oracle Database version.
  /// [state] (Output)
  const DbSystemPropertiesDbHomeDatabaseProperties({
    this.databaseManagementConfig,
    this.dbBackupConfig,
    required this.dbVersion,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseManagementConfig': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig, Map<String, dynamic>>(databaseManagementConfig, (value) => value.toMap()),
      'dbBackupConfig': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig, Map<String, dynamic>>(dbBackupConfig, (value) => value.toMap()),
      'dbVersion': dbVersion,
      'state': ?state,
    };
  }

  factory DbSystemPropertiesDbHomeDatabaseProperties.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabaseProperties(
      databaseManagementConfig: (() { final guardedValue = map['databaseManagementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dbBackupConfig: (() { final guardedValue = map['dbBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dbVersion: pulumi.Input.fromValue(map['dbVersion'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
