// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle database profile.
class OracleProfileResponseDatastreamV1alpha1 {
  /// Connection string attributes
  final pulumi.Input<Map<String, String>> connectionAttributes;
  /// Database for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// Hostname for the Oracle connection.
  final pulumi.Input<String> hostname;
  /// Password for the Oracle connection.
  final pulumi.Input<String> password;
  /// Port for the Oracle connection, default value is 1521.
  final pulumi.Input<int> port;
  /// Username for the Oracle connection.
  final pulumi.Input<String> username;

  /// Creates a new [OracleProfileResponseDatastreamV1alpha1].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection, default value is 1521.
  /// [username] Username for the Oracle connection.
  const OracleProfileResponseDatastreamV1alpha1({
    required this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'password': password,
      'port': port,
      'username': username,
    };
  }

  factory OracleProfileResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleProfileResponseDatastreamV1alpha1(
      connectionAttributes: pulumi.Input.fromValue((map['connectionAttributes'] as Map).cast<String, String>()),
      databaseService: pulumi.Input.fromValue(map['databaseService'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
