// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'clientcert.dart';

/// Configuration values for the postgresql package.
class PostgresqlConfig {
  const PostgresqlConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Use rds_iam instead of password authentication (see: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
  bool? get awsRdsIamAuth {
    final raw = _raw('awsRdsIamAuth');
    return (raw).toBool();
  }

  bool get awsRdsIamAuthIsSecret => _isSecret('awsRdsIamAuth');

  /// AWS profile to use for IAM auth
  String? get awsRdsIamProfile {
    final raw = _raw('awsRdsIamProfile');
    return raw;
  }

  bool get awsRdsIamProfileIsSecret => _isSecret('awsRdsIamProfile');

  /// AWS IAM role to assume for IAM auth
  String? get awsRdsIamProviderRoleArn {
    final raw = _raw('awsRdsIamProviderRoleArn');
    return raw;
  }

  bool get awsRdsIamProviderRoleArnIsSecret => _isSecret('awsRdsIamProviderRoleArn');

  /// AWS region to use for IAM auth
  String? get awsRdsIamRegion {
    final raw = _raw('awsRdsIamRegion');
    return raw;
  }

  bool get awsRdsIamRegionIsSecret => _isSecret('awsRdsIamRegion');

  /// Use MS Azure identity OAuth token (see: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication)
  bool? get azureIdentityAuth {
    final raw = _raw('azureIdentityAuth');
    return (raw).toBool();
  }

  bool get azureIdentityAuthIsSecret => _isSecret('azureIdentityAuth');

  String? get azureTenantId {
    final raw = _raw('azureTenantId');
    return raw;
  }

  bool get azureTenantIdIsSecret => _isSecret('azureTenantId');

  /// SSL client certificate if required by the database.
  Clientcert? get clientcert {
    final raw = _raw('clientcert');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Clientcert.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get clientcertIsSecret => _isSecret('clientcert');

  /// Maximum wait for connection, in seconds. Zero or not specified means wait indefinitely.
  int? get connectTimeout {
    final raw = _raw('connectTimeout');
    return (raw).toInt();
  }

  bool get connectTimeoutIsSecret => _isSecret('connectTimeout');

  /// The name of the database to connect to in order to connect to (defaults to `postgres`).
  String? get database {
    final raw = _raw('database');
    return raw;
  }

  bool get databaseIsSecret => _isSecret('database');

  /// Database username associated to the connected user (for user name maps)
  String? get databaseUsername {
    final raw = _raw('databaseUsername');
    return raw;
  }

  bool get databaseUsernameIsSecret => _isSecret('databaseUsername');

  /// Specify the expected version of PostgreSQL.
  String? get expectedVersion {
    final raw = _raw('expectedVersion');
    return raw;
  }

  bool get expectedVersionIsSecret => _isSecret('expectedVersion');

  /// Service account to impersonate when using GCP IAM authentication.
  String? get gcpIamImpersonateServiceAccount {
    final raw = _raw('gcpIamImpersonateServiceAccount');
    return raw;
  }

  bool get gcpIamImpersonateServiceAccountIsSecret => _isSecret('gcpIamImpersonateServiceAccount');

  /// Name of PostgreSQL server address to connect to
  String? get host {
    final raw = _raw('host');
    return raw;
  }

  bool get hostIsSecret => _isSecret('host');

  /// Maximum number of connections to establish to the database. Zero means unlimited.
  int? get maxConnections {
    final raw = _raw('maxConnections');
    return (raw).toInt();
  }

  bool get maxConnectionsIsSecret => _isSecret('maxConnections');

  /// Password to be used if the PostgreSQL server demands password authentication
  String? get password {
    final raw = _raw('password');
    return raw;
  }

  bool get passwordIsSecret => _isSecret('password');

  /// The PostgreSQL port number to connect to at the server host, or socket file name extension for Unix-domain connections
  int? get port {
    final raw = _raw('port');
    return (raw).toInt();
  }

  bool get portIsSecret => _isSecret('port');

  String? get scheme {
    final raw = _raw('scheme');
    return raw;
  }

  bool get schemeIsSecret => _isSecret('scheme');

  String? get sslMode {
    final raw = _raw('sslMode');
    return raw;
  }

  bool get sslModeIsSecret => _isSecret('sslMode');

  /// This option determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the PostgreSQL server
  String? get sslmode {
    final raw = _raw('sslmode');
    return raw;
  }

  bool get sslmodeIsSecret => _isSecret('sslmode');

  /// The SSL server root certificate file path. The file must contain PEM encoded data.
  String? get sslrootcert {
    final raw = _raw('sslrootcert');
    return raw;
  }

  bool get sslrootcertIsSecret => _isSecret('sslrootcert');

  /// Specify if the user to connect as is a Postgres superuser or not.If not, some feature might be disabled (e.g.: Refreshing state password from Postgres)
  bool? get superuser {
    final raw = _raw('superuser');
    return (raw).toBool();
  }

  bool get superuserIsSecret => _isSecret('superuser');

  /// PostgreSQL user name to connect as
  String? get username {
    final raw = _raw('username');
    return raw;
  }

  bool get usernameIsSecret => _isSecret('username');

}

final config = PostgresqlConfig();

