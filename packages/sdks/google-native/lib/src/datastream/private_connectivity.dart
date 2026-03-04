// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Connectivity
class PrivateConnectivity {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final pulumi.Input<String> privateConnection;

  /// Creates a new [PrivateConnectivity].
  /// [privateConnection] A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  PrivateConnectivity({required this.privateConnection});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'privateConnection': privateConnection};
  }

  factory PrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivity(
      privateConnection: pulumi.Input.fromValue(
        map['privateConnection'] as String,
      ),
    );
  }
}
