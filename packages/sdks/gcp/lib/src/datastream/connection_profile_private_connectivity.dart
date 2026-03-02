// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfilePrivateConnectivity {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final pulumi.Input<String> privateConnection;

  /// Creates a new [ConnectionProfilePrivateConnectivity].
  /// [privateConnection] A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  ConnectionProfilePrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory ConnectionProfilePrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePrivateConnectivity(
      privateConnection: (map['privateConnection'] as String).input(),
    );
  }
}

