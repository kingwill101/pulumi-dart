// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the DB2 provider properties.
class Db2ProviderInstanceProperties {
  /// Gets or sets the db2 database name.
  final String? dbName;
  /// Gets or sets the db2 database password.
  final String? dbPassword;
  /// Gets or sets the key vault URI to secret with the database password.
  final String? dbPasswordUri;
  /// Gets or sets the db2 database sql port.
  final String? dbPort;
  /// Gets or sets the db2 database user name.
  final String? dbUsername;
  /// Gets or sets the target virtual machine name.
  final String? hostname;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'Db2'.
  final String providerType;
  /// Gets or sets the SAP System Identifier
  final String? sapSid;
  /// Gets or sets the blob URI to SSL certificate for the DB2 Database.
  final String? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final String? sslPreference;

  /// Creates a new [Db2ProviderInstanceProperties].
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
  Db2ProviderInstanceProperties({
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

  factory Db2ProviderInstanceProperties.fromMap(Map<String, dynamic> map) {
    return Db2ProviderInstanceProperties(
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      dbPassword: map['dbPassword'] == null ? null : map['dbPassword'] as String,
      dbPasswordUri: map['dbPasswordUri'] == null ? null : map['dbPasswordUri'] as String,
      dbPort: map['dbPort'] == null ? null : map['dbPort'] as String,
      dbUsername: map['dbUsername'] == null ? null : map['dbUsername'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      providerType: map['providerType'] as String,
      sapSid: map['sapSid'] == null ? null : map['sapSid'] as String,
      sslCertificateUri: map['sslCertificateUri'] == null ? null : map['sslCertificateUri'] as String,
      sslPreference: map['sslPreference'] == null ? null : map['sslPreference'] as String,
    );
  }
}

