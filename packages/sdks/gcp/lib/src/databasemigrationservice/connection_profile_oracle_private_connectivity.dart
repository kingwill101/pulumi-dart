// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileOraclePrivateConnectivity {
  /// Required. The resource name (URI) of the private connection.
  final pulumi.Input<String> privateConnection;

  /// Creates a new [ConnectionProfileOraclePrivateConnectivity].
  /// [privateConnection] Required. The resource name (URI) of the private connection.
  ConnectionProfileOraclePrivateConnectivity({required this.privateConnection});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'privateConnection': privateConnection};
  }

  factory ConnectionProfileOraclePrivateConnectivity.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionProfileOraclePrivateConnectivity(
      privateConnection: pulumi.Input.fromValue(
        map['privateConnection'] as String,
      ),
    );
  }
}
