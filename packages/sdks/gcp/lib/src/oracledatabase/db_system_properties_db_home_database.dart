// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties_db_home_database_properties.dart';

class DbSystemPropertiesDbHomeDatabase {
  /// The password for the default ADMIN user.
  final pulumi.Input<String> adminPassword;

  /// The character set for the database. The default is AL32UTF8.
  final pulumi.Input<String>? characterSet;

  /// (Output)
  /// The date and time that the Database was created.
  final pulumi.Input<String>? createTime;

  /// The database ID of the Database.
  final pulumi.Input<String> databaseId;

  /// The name of the DbHome resource associated with the Database.
  final pulumi.Input<String>? dbHomeName;

  /// The database name. The name must begin with an alphabetic character and can
  /// contain a maximum of eight alphanumeric characters. Special characters are
  /// not permitted.
  final pulumi.Input<String>? dbName;

  /// The DB_UNIQUE_NAME of the Oracle Database being backed up.
  final pulumi.Input<String>? dbUniqueName;

  /// The GCP Oracle zone where the Database is created.
  final pulumi.Input<String>? gcpOracleZone;

  /// (Output)
  /// Identifier. The name of the Database resource in the following format:
  /// projects/{project}/locations/{region}/databases/{database}
  final pulumi.Input<String>? name;

  /// The national character set for the database. The default is AL16UTF16.
  final pulumi.Input<String>? ncharacterSet;

  /// (Output)
  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  final pulumi.Input<String>? ociUrl;

  /// (Output)
  /// The Status of Operations Insights for this Database.
  /// Possible values:
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final pulumi.Input<String>? opsInsightsStatus;

  /// The properties of a Database.
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDbHomeDatabaseProperties>? properties;

  /// The TDE wallet password for the database.
  final pulumi.Input<String>? tdeWalletPassword;

  /// Creates a new [DbSystemPropertiesDbHomeDatabase].
  /// [adminPassword] The password for the default ADMIN user.
  /// [characterSet] The character set for the database. The default is AL32UTF8.
  /// [createTime] (Output)
  /// [databaseId] The database ID of the Database.
  /// [dbHomeName] The name of the DbHome resource associated with the Database.
  /// [dbName] The database name. The name must begin with an alphabetic character and can
  /// [dbUniqueName] The DB_UNIQUE_NAME of the Oracle Database being backed up.
  /// [gcpOracleZone] The GCP Oracle zone where the Database is created.
  /// [name] (Output)
  /// [ncharacterSet] The national character set for the database. The default is AL16UTF16.
  /// [ociUrl] (Output)
  /// [opsInsightsStatus] (Output)
  /// [properties] The properties of a Database.
  /// [tdeWalletPassword] The TDE wallet password for the database.
  DbSystemPropertiesDbHomeDatabase({
    required this.adminPassword,
    this.characterSet,
    this.createTime,
    required this.databaseId,
    this.dbHomeName,
    this.dbName,
    this.dbUniqueName,
    this.gcpOracleZone,
    this.name,
    this.ncharacterSet,
    this.ociUrl,
    this.opsInsightsStatus,
    this.properties,
    this.tdeWalletPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'characterSet': ?characterSet,
      'createTime': ?createTime,
      'databaseId': databaseId,
      'dbHomeName': ?dbHomeName,
      'dbName': ?dbName,
      'dbUniqueName': ?dbUniqueName,
      'gcpOracleZone': ?gcpOracleZone,
      'name': ?name,
      'ncharacterSet': ?ncharacterSet,
      'ociUrl': ?ociUrl,
      'opsInsightsStatus': ?opsInsightsStatus,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DbSystemPropertiesDbHomeDatabaseProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'tdeWalletPassword': ?tdeWalletPassword,
    };
  }

  factory DbSystemPropertiesDbHomeDatabase.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabase(
      adminPassword: pulumi.Input.fromValue(map['adminPassword'] as String),
      characterSet: (() {
        final guardedValue = map['characterSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      dbHomeName: (() {
        final guardedValue = map['dbHomeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbName: (() {
        final guardedValue = map['dbName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbUniqueName: (() {
        final guardedValue = map['dbUniqueName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gcpOracleZone: (() {
        final guardedValue = map['gcpOracleZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ncharacterSet: (() {
        final guardedValue = map['ncharacterSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociUrl: (() {
        final guardedValue = map['ociUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      opsInsightsStatus: (() {
        final guardedValue = map['opsInsightsStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DbSystemPropertiesDbHomeDatabaseProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tdeWalletPassword: (() {
        final guardedValue = map['tdeWalletPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
