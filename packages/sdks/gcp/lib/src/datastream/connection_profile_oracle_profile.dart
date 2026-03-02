// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileOracleProfile {
  /// Connection string attributes
  final pulumi.Input<Map<String, String>>? connectionAttributes;
  /// Database for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// Hostname for the Oracle connection.
  final pulumi.Input<String> hostname;
  /// Password for the Oracle connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Port for the Oracle connection.
  final pulumi.Input<int>? port;
  /// A reference to a Secret Manager resource name storing the user's password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// Username for the Oracle connection.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfileOracleProfile].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [username] Username for the Oracle connection.
  ConnectionProfileOracleProfile({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': ?connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'username': username,
    };
  }

  factory ConnectionProfileOracleProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileOracleProfile(
      connectionAttributes: map['connectionAttributes'] == null ? null : ((map['connectionAttributes']! as Map).cast<String, String>()).input(),
      databaseService: (map['databaseService'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : (map['secretManagerStoredPassword']! as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

