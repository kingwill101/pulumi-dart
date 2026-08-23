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
  const ConnectionProfileOracleProfile({
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
      connectionAttributes: (() { final guardedValue = map['connectionAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      databaseService: pulumi.Input.fromValue(map['databaseService'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      secretManagerStoredPassword: (() { final guardedValue = map['secretManagerStoredPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
