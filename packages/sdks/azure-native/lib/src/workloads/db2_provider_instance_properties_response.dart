// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the DB2 provider properties.
class Db2ProviderInstancePropertiesResponse {
  /// Gets or sets the db2 database name.
  final pulumi.Input<String?>? dbName;
  /// Gets or sets the db2 database password.
  final pulumi.Input<String?>? dbPassword;
  /// Gets or sets the key vault URI to secret with the database password.
  final pulumi.Input<String?>? dbPasswordUri;
  /// Gets or sets the db2 database sql port.
  final pulumi.Input<String?>? dbPort;
  /// Gets or sets the db2 database user name.
  final pulumi.Input<String?>? dbUsername;
  /// Gets or sets the target virtual machine name.
  final pulumi.Input<String?>? hostname;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'Db2'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the SAP System Identifier
  final pulumi.Input<String?>? sapSid;
  /// Gets or sets the blob URI to SSL certificate for the DB2 Database.
  final pulumi.Input<String?>? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String?>? sslPreference;

  /// Creates a new [Db2ProviderInstancePropertiesResponse].
  /// [dbName] Gets or sets the db2 database name.
  /// [dbPassword] Gets or sets the db2 database password.
  /// [dbPasswordUri] Gets or sets the key vault URI to secret with the database password.
  /// [dbPort] Gets or sets the db2 database sql port.
  /// [dbUsername] Gets or sets the db2 database user name.
  /// [hostname] Gets or sets the target virtual machine name.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the DB2 Database.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  const Db2ProviderInstancePropertiesResponse({
    this.dbName,
    this.dbPassword,
    this.dbPasswordUri,
    this.dbPort,
    this.dbUsername,
    this.hostname,
    required this.providerType,
    this.sapSid,
    this.sslCertificateUri,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': ?dbName,
      'dbPassword': ?dbPassword,
      'dbPasswordUri': ?dbPasswordUri,
      'dbPort': ?dbPort,
      'dbUsername': ?dbUsername,
      'hostname': ?hostname,
      'providerType': providerType,
      'sapSid': ?sapSid,
      'sslCertificateUri': ?sslCertificateUri,
      'sslPreference': ?sslPreference,
    };
  }

  factory Db2ProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return Db2ProviderInstancePropertiesResponse(
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbPassword: (() { final guardedValue = map['dbPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbPasswordUri: (() { final guardedValue = map['dbPasswordUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbPort: (() { final guardedValue = map['dbPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbUsername: (() { final guardedValue = map['dbUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
      sapSid: (() { final guardedValue = map['sapSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateUri: (() { final guardedValue = map['sslCertificateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPreference: (() { final guardedValue = map['sslPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
