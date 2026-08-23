// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Connectivity.
class PrivateConnectivity {
  /// The resource name (URI) of the private connection.
  final pulumi.Input<String> privateConnection;

  /// Creates a new [PrivateConnectivity].
  /// [privateConnection] The resource name (URI) of the private connection.
  const PrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory PrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivity(
      privateConnection: pulumi.Input.fromValue(map['privateConnection'] as String),
    );
  }
}
