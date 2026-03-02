// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the provider properties.
class HanaDbProviderInstanceProperties {
  /// Gets or sets the hana database name.
  final pulumi.Input<String>? dbName;
  /// Gets or sets the database password.
  final pulumi.Input<String>? dbPassword;
  /// Gets or sets the key vault URI to secret with the database password.
  final pulumi.Input<String>? dbPasswordUri;
  /// Gets or sets the database user name.
  final pulumi.Input<String>? dbUsername;
  /// Gets or sets the target virtual machine size.
  final pulumi.Input<String>? hostname;
  /// Gets or sets the database instance number.
  final pulumi.Input<String>? instanceNumber;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'SapHana'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the SAP System Identifier.
  final pulumi.Input<String>? sapSid;
  /// Gets or sets the database sql port.
  final pulumi.Input<String>? sqlPort;
  /// Gets or sets the blob URI to SSL certificate for the DB.
  final pulumi.Input<String>? sslCertificateUri;
  /// Gets or sets the hostname(s) in the SSL certificate.
  final pulumi.Input<String>? sslHostNameInCertificate;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String>? sslPreference;

  /// Creates a new [HanaDbProviderInstanceProperties].
  /// [dbName] Gets or sets the hana database name.
  /// [dbPassword] Gets or sets the database password.
  /// [dbPasswordUri] Gets or sets the key vault URI to secret with the database password.
  /// [dbUsername] Gets or sets the database user name.
  /// [hostname] Gets or sets the target virtual machine size.
  /// [instanceNumber] Gets or sets the database instance number.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier.
  /// [sqlPort] Gets or sets the database sql port.
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the DB.
  /// [sslHostNameInCertificate] Gets or sets the hostname(s) in the SSL certificate.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  HanaDbProviderInstanceProperties({
    this.dbName,
    this.dbPassword,
    this.dbPasswordUri,
    this.dbUsername,
    this.hostname,
    this.instanceNumber,
    required this.providerType,
    this.sapSid,
    this.sqlPort,
    this.sslCertificateUri,
    this.sslHostNameInCertificate,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': ?dbName,
      'dbPassword': ?dbPassword,
      'dbPasswordUri': ?dbPasswordUri,
      'dbUsername': ?dbUsername,
      'hostname': ?hostname,
      'instanceNumber': ?instanceNumber,
      'providerType': providerType,
      'sapSid': ?sapSid,
      'sqlPort': ?sqlPort,
      'sslCertificateUri': ?sslCertificateUri,
      'sslHostNameInCertificate': ?sslHostNameInCertificate,
      'sslPreference': ?sslPreference,
    };
  }

  factory HanaDbProviderInstanceProperties.fromMap(Map<String, dynamic> map) {
    return HanaDbProviderInstanceProperties(
      dbName: map['dbName'] == null ? null : (map['dbName'] as String).input(),
      dbPassword: map['dbPassword'] == null ? null : (map['dbPassword'] as String).input(),
      dbPasswordUri: map['dbPasswordUri'] == null ? null : (map['dbPasswordUri'] as String).input(),
      dbUsername: map['dbUsername'] == null ? null : (map['dbUsername'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      instanceNumber: map['instanceNumber'] == null ? null : (map['instanceNumber'] as String).input(),
      providerType: (map['providerType'] as String).input(),
      sapSid: map['sapSid'] == null ? null : (map['sapSid'] as String).input(),
      sqlPort: map['sqlPort'] == null ? null : (map['sqlPort'] as String).input(),
      sslCertificateUri: map['sslCertificateUri'] == null ? null : (map['sslCertificateUri'] as String).input(),
      sslHostNameInCertificate: map['sslHostNameInCertificate'] == null ? null : (map['sslHostNameInCertificate'] as String).input(),
      sslPreference: map['sslPreference'] == null ? null : (map['sslPreference'] as String).input(),
    );
  }
}

