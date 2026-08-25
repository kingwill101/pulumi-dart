// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceRepresentationInstance resources.
class SourceRepresentationInstanceState {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String?>? caCertificate;
  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String?>? clientCertificate;
  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  final pulumi.Input<String?>? clientKey;
  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17, POSTGRES_18, SQLSERVER_2022_STANDARD, SQLSERVER_2022_ENTERPRISE, SQLSERVER_2022_EXPRESS, SQLSERVER_2022_WEB, SQLSERVER_2025_STANDARD, SQLSERVER_2025_ENTERPRISE, SQLSERVER_2025_EXPRESS, SQLSERVER_2025_WEB. Database Version Policies includes an up-to-date reference of supported versions.
  final pulumi.Input<String?>? databaseVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A file in the bucket that contains the data from the external server.
  final pulumi.Input<String?>? dumpFilePath;
  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  final pulumi.Input<String?>? host;
  /// The name of the source representation instance. Use any valid Cloud SQL instance name.
  final pulumi.Input<String?>? name;
  /// The password for the replication user account.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? password;
  /// The externally accessible port for the source database server.
  /// Defaults to 3306.
  final pulumi.Input<int?>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Region in which the created instance should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;
  /// The replication user account on the external server.
  final pulumi.Input<String?>? username;

  /// Creates a new [SourceRepresentationInstanceState].
  /// [caCertificate] The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  /// [clientCertificate] The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  /// [clientKey] The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  /// [databaseVersion] The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17, POSTGRES_18, SQLSERVER_2022_STANDARD, SQLSERVER_2022_ENTERPRISE, SQLSERVER_2022_EXPRESS, SQLSERVER_2022_WEB, SQLSERVER_2025_STANDARD, SQLSERVER_2025_ENTERPRISE, SQLSERVER_2025_EXPRESS, SQLSERVER_2025_WEB. Database Version Policies includes an up-to-date reference of supported versions.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dumpFilePath] A file in the bucket that contains the data from the external server.
  /// [host] The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  /// [name] The name of the source representation instance. Use any valid Cloud SQL instance name.
  /// [password] The password for the replication user account.
  /// [port] The externally accessible port for the source database server.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created instance should reside.
  /// [username] The replication user account on the external server.
  const SourceRepresentationInstanceState({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.databaseVersion,
    this.deletionPolicy,
    this.dumpFilePath,
    this.host,
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
      'databaseVersion': ?databaseVersion,
      'deletionPolicy': ?deletionPolicy,
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
      caCertificate: (() { final guardedValue = map['caCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dumpFilePath: (() { final guardedValue = map['dumpFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
