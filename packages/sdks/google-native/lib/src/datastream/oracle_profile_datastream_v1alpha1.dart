// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle database profile.
class OracleProfileDatastreamV1alpha1 {
  /// Connection string attributes
  final pulumi.Input<Map<String, String>>? connectionAttributes;
  /// Database for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// Hostname for the Oracle connection.
  final pulumi.Input<String> hostname;
  /// Password for the Oracle connection.
  final pulumi.Input<String> password;
  /// Port for the Oracle connection, default value is 1521.
  final pulumi.Input<int>? port;
  /// Username for the Oracle connection.
  final pulumi.Input<String> username;

  /// Creates a new [OracleProfileDatastreamV1alpha1].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection, default value is 1521.
  /// [username] Username for the Oracle connection.
  OracleProfileDatastreamV1alpha1({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    required this.password,
    this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': ?connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'password': password,
      'port': ?port,
      'username': username,
    };
  }

  factory OracleProfileDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleProfileDatastreamV1alpha1(
      connectionAttributes: map['connectionAttributes'] == null ? null : ((map['connectionAttributes']! as Map).cast<String, String>()).input(),
      databaseService: (map['databaseService'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      password: (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      username: (map['username'] as String).input(),
    );
  }
}

