// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfilePostgresqlPrivateConnectivity {
  /// Required. The resource name (URI) of the private connection.
  final pulumi.Input<String> privateConnection;

  /// Creates a new [ConnectionProfilePostgresqlPrivateConnectivity].
  /// [privateConnection] Required. The resource name (URI) of the private connection.
  const ConnectionProfilePostgresqlPrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory ConnectionProfilePostgresqlPrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlPrivateConnectivity(
      privateConnection: pulumi.Input.fromValue(map['privateConnection'] as String),
    );
  }
}
