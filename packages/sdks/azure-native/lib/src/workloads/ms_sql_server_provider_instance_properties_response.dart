// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the SQL server provider properties.
class MsSqlServerProviderInstancePropertiesResponse {
  /// Gets or sets the database password.
  final pulumi.Input<String>? dbPassword;
  /// Gets or sets the key vault URI to secret with the database password.
  final pulumi.Input<String>? dbPasswordUri;
  /// Gets or sets the database sql port.
  final pulumi.Input<String>? dbPort;
  /// Gets or sets the database user name.
  final pulumi.Input<String>? dbUsername;
  /// Gets or sets the SQL server host name.
  final pulumi.Input<String>? hostname;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'MsSqlServer'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the SAP System Identifier
  final pulumi.Input<String>? sapSid;
  /// Gets or sets the blob URI to SSL certificate for the SQL Database.
  final pulumi.Input<String>? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String>? sslPreference;

  /// Creates a new [MsSqlServerProviderInstancePropertiesResponse].
  /// [dbPassword] Gets or sets the database password.
  /// [dbPasswordUri] Gets or sets the key vault URI to secret with the database password.
  /// [dbPort] Gets or sets the database sql port.
  /// [dbUsername] Gets or sets the database user name.
  /// [hostname] Gets or sets the SQL server host name.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the SQL Database.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  MsSqlServerProviderInstancePropertiesResponse({
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

  factory MsSqlServerProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MsSqlServerProviderInstancePropertiesResponse(
      dbPassword: map['dbPassword'] == null ? null : (map['dbPassword']! as String).input(),
      dbPasswordUri: map['dbPasswordUri'] == null ? null : (map['dbPasswordUri']! as String).input(),
      dbPort: map['dbPort'] == null ? null : (map['dbPort']! as String).input(),
      dbUsername: map['dbUsername'] == null ? null : (map['dbUsername']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      providerType: (map['providerType'] as String).input(),
      sapSid: map['sapSid'] == null ? null : (map['sapSid']! as String).input(),
      sslCertificateUri: map['sslCertificateUri'] == null ? null : (map['sslCertificateUri']! as String).input(),
      sslPreference: map['sslPreference'] == null ? null : (map['sslPreference']! as String).input(),
    );
  }
}

