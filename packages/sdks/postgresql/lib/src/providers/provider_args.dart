// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_clientcert.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Use rdsIam instead of password authentication (see: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
  final pulumi.Input<bool>? awsRdsIamAuth;
  /// AWS profile to use for IAM auth
  final pulumi.Input<String>? awsRdsIamProfile;
  /// AWS IAM role to assume for IAM auth
  final pulumi.Input<String>? awsRdsIamProviderRoleArn;
  /// AWS region to use for IAM auth
  final pulumi.Input<String>? awsRdsIamRegion;
  /// Use MS Azure identity OAuth token (see: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication)
  final pulumi.Input<bool>? azureIdentityAuth;
  /// MS Azure tenant ID (see: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config.html)
  final pulumi.Input<String>? azureTenantId;
  /// SSL client certificate if required by the database.
  final pulumi.Input<ProviderClientcert>? clientcert;
  /// Maximum wait for connection, in seconds. Zero or not specified means wait indefinitely.
  final pulumi.Input<int>? connectTimeout;
  /// The name of the database to connect to in order to connect to (defaults to `postgres`).
  final pulumi.Input<String>? database;
  /// Database username associated to the connected user (for user name maps)
  final pulumi.Input<String>? databaseUsername;
  /// Specify the expected version of PostgreSQL.
  final pulumi.Input<String>? expectedVersion;
  /// Service account to impersonate when using GCP IAM authentication.
  final pulumi.Input<String>? gcpIamImpersonateServiceAccount;
  /// Name of PostgreSQL server address to connect to
  final pulumi.Input<String>? host;
  /// Maximum number of connections to establish to the database. Zero means unlimited.
  final pulumi.Input<int>? maxConnections;
  /// Password to be used if the PostgreSQL server demands password authentication
  final pulumi.Input<String>? password;
  /// The PostgreSQL port number to connect to at the server host, or socket file name extension for Unix-domain connections
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? scheme;
  final pulumi.Input<String>? sslMode;
  /// This option determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the PostgreSQL server
  final pulumi.Input<String>? sslmode;
  /// The SSL server root certificate file path. The file must contain PEM encoded data.
  final pulumi.Input<String>? sslrootcert;
  /// Specify if the user to connect as is a Postgres superuser or not.If not, some feature might be disabled (e.g.: Refreshing state password from Postgres)
  final pulumi.Input<bool>? superuser;
  /// PostgreSQL user name to connect as
  final pulumi.Input<String>? username;

  /// Creates a new [ProviderArgs].
  /// [awsRdsIamAuth] Use rdsIam instead of password authentication (see: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
  /// [awsRdsIamProfile] AWS profile to use for IAM auth
  /// [awsRdsIamProviderRoleArn] AWS IAM role to assume for IAM auth
  /// [awsRdsIamRegion] AWS region to use for IAM auth
  /// [azureIdentityAuth] Use MS Azure identity OAuth token (see: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication)
  /// [azureTenantId] MS Azure tenant ID (see: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config.html)
  /// [clientcert] SSL client certificate if required by the database.
  /// [connectTimeout] Maximum wait for connection, in seconds. Zero or not specified means wait indefinitely.
  /// [database] The name of the database to connect to in order to connect to (defaults to `postgres`).
  /// [databaseUsername] Database username associated to the connected user (for user name maps)
  /// [expectedVersion] Specify the expected version of PostgreSQL.
  /// [gcpIamImpersonateServiceAccount] Service account to impersonate when using GCP IAM authentication.
  /// [host] Name of PostgreSQL server address to connect to
  /// [maxConnections] Maximum number of connections to establish to the database. Zero means unlimited.
  /// [password] Password to be used if the PostgreSQL server demands password authentication
  /// [port] The PostgreSQL port number to connect to at the server host, or socket file name extension for Unix-domain connections
  /// [scheme] Optional.
  /// [sslMode] Optional.
  /// [sslmode] This option determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the PostgreSQL server
  /// [sslrootcert] The SSL server root certificate file path. The file must contain PEM encoded data.
  /// [superuser] Specify if the user to connect as is a Postgres superuser or not.If not, some feature might be disabled (e.g.: Refreshing state password from Postgres)
  /// [username] PostgreSQL user name to connect as
  const ProviderArgs({
    this.awsRdsIamAuth,
    this.awsRdsIamProfile,
    this.awsRdsIamProviderRoleArn,
    this.awsRdsIamRegion,
    this.azureIdentityAuth,
    this.azureTenantId,
    this.clientcert,
    this.connectTimeout,
    this.database,
    this.databaseUsername,
    this.expectedVersion,
    this.gcpIamImpersonateServiceAccount,
    this.host,
    this.maxConnections,
    this.password,
    this.port,
    this.scheme,
    this.sslMode,
    this.sslmode,
    this.sslrootcert,
    this.superuser,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRdsIamAuth': ?awsRdsIamAuth,
      'awsRdsIamProfile': ?awsRdsIamProfile,
      'awsRdsIamProviderRoleArn': ?awsRdsIamProviderRoleArn,
      'awsRdsIamRegion': ?awsRdsIamRegion,
      'azureIdentityAuth': ?azureIdentityAuth,
      'azureTenantId': ?azureTenantId,
      'clientcert': ?pulumi.Input.mapOptionalInputValue<ProviderClientcert, Map<String, dynamic>>(clientcert, (value) => value.toMap()),
      'connectTimeout': ?connectTimeout,
      'database': ?database,
      'databaseUsername': ?databaseUsername,
      'expectedVersion': ?expectedVersion,
      'gcpIamImpersonateServiceAccount': ?gcpIamImpersonateServiceAccount,
      'host': ?host,
      'maxConnections': ?maxConnections,
      'password': ?password,
      'port': ?port,
      'scheme': ?scheme,
      'sslMode': ?sslMode,
      'sslmode': ?sslmode,
      'sslrootcert': ?sslrootcert,
      'superuser': ?superuser,
      'username': ?username,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      awsRdsIamAuth: (() { final guardedValue = map['awsRdsIamAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      awsRdsIamProfile: (() { final guardedValue = map['awsRdsIamProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRdsIamProviderRoleArn: (() { final guardedValue = map['awsRdsIamProviderRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRdsIamRegion: (() { final guardedValue = map['awsRdsIamRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureIdentityAuth: (() { final guardedValue = map['azureIdentityAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureTenantId: (() { final guardedValue = map['azureTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientcert: (() { final guardedValue = map['clientcert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderClientcert.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectTimeout: (() { final guardedValue = map['connectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseUsername: (() { final guardedValue = map['databaseUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedVersion: (() { final guardedValue = map['expectedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpIamImpersonateServiceAccount: (() { final guardedValue = map['gcpIamImpersonateServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslmode: (() { final guardedValue = map['sslmode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslrootcert: (() { final guardedValue = map['sslrootcert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      superuser: (() { final guardedValue = map['superuser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
