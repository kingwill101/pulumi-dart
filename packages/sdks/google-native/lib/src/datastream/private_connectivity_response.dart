// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Connectivity
class PrivateConnectivityResponse {
  /// A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
  final pulumi.Input<String> privateConnection;

  /// Creates a new [PrivateConnectivityResponse].
  /// [privateConnection] A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`
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
      privateConnection: (map['privateConnection'] as String).input(),
    );
  }
}

