// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceRepresentationInstance resources.
class SourceRepresentationInstanceState {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? caCertificate;
  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? clientCertificate;
  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? clientKey;
  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  final pulumi.Input<String>? databaseVersion;
  /// A file in the bucket that contains the data from the external server.
  final pulumi.Input<String>? dumpFilePath;
  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  final pulumi.Input<String>? host;
  /// The name of the source representation instance. Use any valid Cloud SQL instance name.
  final pulumi.Input<String>? name;
  /// The password for the replication user account.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// The externally accessible port for the source database server.
  /// Defaults to 3306.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the created instance should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The replication user account on the external server.
  final pulumi.Input<String>? username;

  /// Creates a new [SourceRepresentationInstanceState].
  /// [caCertificate] The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  /// [clientCertificate] The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  /// [clientKey] The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  /// [databaseVersion] The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  /// [dumpFilePath] A file in the bucket that contains the data from the external server.
  /// [host] The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  /// [name] The name of the source representation instance. Use any valid Cloud SQL instance name.
  /// [password] The password for the replication user account.
  /// [port] The externally accessible port for the source database server.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created instance should reside.
  /// [username] The replication user account on the external server.
  SourceRepresentationInstanceState({
    pulumi.Output<String>? caCertificate,
    pulumi.Output<String>? clientCertificate,
    pulumi.Output<String>? clientKey,
    pulumi.Output<String>? databaseVersion,
    pulumi.Output<String>? dumpFilePath,
    pulumi.Output<String>? host,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? username,
  }) :
      caCertificate = pulumi.Input.asOptionalInput<String>(caCertificate),
      clientCertificate = pulumi.Input.asOptionalInput<String>(clientCertificate),
      clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
      databaseVersion = pulumi.Input.asOptionalInput<String>(databaseVersion),
      dumpFilePath = pulumi.Input.asOptionalInput<String>(dumpFilePath),
      host = pulumi.Input.asOptionalInput<String>(host),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'databaseVersion': ?databaseVersion,
      'dumpFilePath': ?dumpFilePath,
      'host': ?host,
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'project': ?project,
      'region': ?region,
      'username': ?username,
    };
  }

  factory SourceRepresentationInstanceState.fromMap(Map<String, dynamic> map) {
    return SourceRepresentationInstanceState(
      caCertificate: map['caCertificate'] == null ? null : pulumi.Output.create<String>(map['caCertificate'] as String),
      clientCertificate: map['clientCertificate'] == null ? null : pulumi.Output.create<String>(map['clientCertificate'] as String),
      clientKey: map['clientKey'] == null ? null : pulumi.Output.create<String>(map['clientKey'] as String),
      databaseVersion: map['databaseVersion'] == null ? null : pulumi.Output.create<String>(map['databaseVersion'] as String),
      dumpFilePath: map['dumpFilePath'] == null ? null : pulumi.Output.create<String>(map['dumpFilePath'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

