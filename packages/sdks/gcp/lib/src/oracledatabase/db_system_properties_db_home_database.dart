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
      'properties': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesDbHomeDatabaseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tdeWalletPassword': ?tdeWalletPassword,
    };
  }

  factory DbSystemPropertiesDbHomeDatabase.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabase(
      adminPassword: (map['adminPassword'] as String).input(),
      characterSet: map['characterSet'] == null ? null : (map['characterSet']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      databaseId: (map['databaseId'] as String).input(),
      dbHomeName: map['dbHomeName'] == null ? null : (map['dbHomeName']! as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName']! as String).input(),
      dbUniqueName: map['dbUniqueName'] == null ? null : (map['dbUniqueName']! as String).input(),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : (map['gcpOracleZone']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ncharacterSet: map['ncharacterSet'] == null ? null : (map['ncharacterSet']! as String).input(),
      ociUrl: map['ociUrl'] == null ? null : (map['ociUrl']! as String).input(),
      opsInsightsStatus: map['opsInsightsStatus'] == null ? null : (map['opsInsightsStatus']! as String).input(),
      properties: map['properties'] == null ? null : (DbSystemPropertiesDbHomeDatabaseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      tdeWalletPassword: map['tdeWalletPassword'] == null ? null : (map['tdeWalletPassword']! as String).input(),
    );
  }
}

