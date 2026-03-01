// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_clientcert.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Use rds_iam instead of password authentication (see: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
  final pulumi.Input<bool>? awsRdsIamAuth;
  /// AWS profile to use for IAM auth
  final pulumi.Input<String>? awsRdsIamProfile;
  /// AWS IAM role to assume for IAM auth
  final pulumi.Input<String>? awsRdsIamProviderRoleArn;
  /// AWS region to use for IAM auth
  final pulumi.Input<String>? awsRdsIamRegion;
  /// Use MS Azure identity OAuth token (see: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication)
  final pulumi.Input<bool>? azureIdentityAuth;
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
  /// [awsRdsIamAuth] Use rds_iam instead of password authentication (see: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
  /// [awsRdsIamProfile] AWS profile to use for IAM auth
  /// [awsRdsIamProviderRoleArn] AWS IAM role to assume for IAM auth
  /// [awsRdsIamRegion] AWS region to use for IAM auth
  /// [azureIdentityAuth] Use MS Azure identity OAuth token (see: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication)
  /// [azureTenantId] Optional.
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
  ProviderArgs({
    pulumi.Output<bool>? awsRdsIamAuth,
    pulumi.Output<String>? awsRdsIamProfile,
    pulumi.Output<String>? awsRdsIamProviderRoleArn,
    pulumi.Output<String>? awsRdsIamRegion,
    pulumi.Output<bool>? azureIdentityAuth,
    pulumi.Output<String>? azureTenantId,
    pulumi.Output<ProviderClientcert>? clientcert,
    pulumi.Output<int>? connectTimeout,
    pulumi.Output<String>? database,
    pulumi.Output<String>? databaseUsername,
    pulumi.Output<String>? expectedVersion,
    pulumi.Output<String>? gcpIamImpersonateServiceAccount,
    pulumi.Output<String>? host,
    pulumi.Output<int>? maxConnections,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    pulumi.Output<String>? scheme,
    pulumi.Output<String>? sslMode,
    pulumi.Output<String>? sslmode,
    pulumi.Output<String>? sslrootcert,
    pulumi.Output<bool>? superuser,
    pulumi.Output<String>? username,
  }) :
      awsRdsIamAuth = pulumi.Input.asOptionalInput<bool>(awsRdsIamAuth),
      awsRdsIamProfile = pulumi.Input.asOptionalInput<String>(awsRdsIamProfile),
      awsRdsIamProviderRoleArn = pulumi.Input.asOptionalInput<String>(awsRdsIamProviderRoleArn),
      awsRdsIamRegion = pulumi.Input.asOptionalInput<String>(awsRdsIamRegion),
      azureIdentityAuth = pulumi.Input.asOptionalInput<bool>(azureIdentityAuth),
      azureTenantId = pulumi.Input.asOptionalInput<String>(azureTenantId),
      clientcert = pulumi.Input.asOptionalInput<ProviderClientcert>(clientcert),
      connectTimeout = pulumi.Input.asOptionalInput<int>(connectTimeout),
      database = pulumi.Input.asOptionalInput<String>(database),
      databaseUsername = pulumi.Input.asOptionalInput<String>(databaseUsername),
      expectedVersion = pulumi.Input.asOptionalInput<String>(expectedVersion),
      gcpIamImpersonateServiceAccount = pulumi.Input.asOptionalInput<String>(gcpIamImpersonateServiceAccount),
      host = pulumi.Input.asOptionalInput<String>(host),
      maxConnections = pulumi.Input.asOptionalInput<int>(maxConnections),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      scheme = pulumi.Input.asOptionalInput<String>(scheme),
      sslMode = pulumi.Input.asOptionalInput<String>(sslMode),
      sslmode = pulumi.Input.asOptionalInput<String>(sslmode),
      sslrootcert = pulumi.Input.asOptionalInput<String>(sslrootcert),
      superuser = pulumi.Input.asOptionalInput<bool>(superuser),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      awsRdsIamAuth: map['awsRdsIamAuth'] == null ? null : pulumi.Output.create<bool>(map['awsRdsIamAuth'] as bool),
      awsRdsIamProfile: map['awsRdsIamProfile'] == null ? null : pulumi.Output.create<String>(map['awsRdsIamProfile'] as String),
      awsRdsIamProviderRoleArn: map['awsRdsIamProviderRoleArn'] == null ? null : pulumi.Output.create<String>(map['awsRdsIamProviderRoleArn'] as String),
      awsRdsIamRegion: map['awsRdsIamRegion'] == null ? null : pulumi.Output.create<String>(map['awsRdsIamRegion'] as String),
      azureIdentityAuth: map['azureIdentityAuth'] == null ? null : pulumi.Output.create<bool>(map['azureIdentityAuth'] as bool),
      azureTenantId: map['azureTenantId'] == null ? null : pulumi.Output.create<String>(map['azureTenantId'] as String),
      clientcert: map['clientcert'] == null ? null : pulumi.Output.create<ProviderClientcert>(ProviderClientcert.fromMap((map['clientcert'] as Map).cast<String, dynamic>())),
      connectTimeout: map['connectTimeout'] == null ? null : pulumi.Output.create<int>(map['connectTimeout'] as int),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      databaseUsername: map['databaseUsername'] == null ? null : pulumi.Output.create<String>(map['databaseUsername'] as String),
      expectedVersion: map['expectedVersion'] == null ? null : pulumi.Output.create<String>(map['expectedVersion'] as String),
      gcpIamImpersonateServiceAccount: map['gcpIamImpersonateServiceAccount'] == null ? null : pulumi.Output.create<String>(map['gcpIamImpersonateServiceAccount'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      maxConnections: map['maxConnections'] == null ? null : pulumi.Output.create<int>(map['maxConnections'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      scheme: map['scheme'] == null ? null : pulumi.Output.create<String>(map['scheme'] as String),
      sslMode: map['sslMode'] == null ? null : pulumi.Output.create<String>(map['sslMode'] as String),
      sslmode: map['sslmode'] == null ? null : pulumi.Output.create<String>(map['sslmode'] as String),
      sslrootcert: map['sslrootcert'] == null ? null : pulumi.Output.create<String>(map['sslrootcert'] as String),
      superuser: map['superuser'] == null ? null : pulumi.Output.create<bool>(map['superuser'] as bool),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

