// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Connectivity.
class PrivateConnectivityResponse {
  /// The resource name (URI) of the private connection.
  final pulumi.Input<String> privateConnection;

  /// Creates a new [PrivateConnectivityResponse].
  /// [privateConnection] The resource name (URI) of the private connection.
  PrivateConnectivityResponse({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory PrivateConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponse(
      privateConnection: pulumi.Input.fromValue(map['privateConnection'] as String),
    );
  }
}

