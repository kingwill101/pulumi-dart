// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_source_representation_instance_source_representation_instance_args_doc}
/// The set of arguments for SourceRepresentationInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_source_representation_instance_source_representation_instance_args_doc}
class SourceRepresentationInstanceArgs {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? caCertificate;
  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? clientCertificate;
  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String>? clientKey;
  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  final pulumi.Input<String> databaseVersion;
  /// A file in the bucket that contains the data from the external server.
  final pulumi.Input<String>? dumpFilePath;
  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  final pulumi.Input<String> host;
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

  /// Creates a new [SourceRepresentationInstanceArgs].
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
  SourceRepresentationInstanceArgs({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    required this.databaseVersion,
    this.dumpFilePath,
    required this.host,
    this.name,
    this.password,
    this.port,
    this.project,
    this.region,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'databaseVersion': databaseVersion,
      'dumpFilePath': ?dumpFilePath,
      'host': host,
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'project': ?project,
      'region': ?region,
      'username': ?username,
    };
  }

  factory SourceRepresentationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SourceRepresentationInstanceArgs(
      caCertificate: (() { final guardedValue = map['caCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseVersion: pulumi.Input.fromValue(map['databaseVersion'] as String),
      dumpFilePath: (() { final guardedValue = map['dumpFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

