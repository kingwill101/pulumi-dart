// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains endpoint information through which to interact with a blockchain node.
class EndpointInfoResponse {
  /// The assigned URL for the node JSON-RPC API endpoint.
  final pulumi.Input<String> jsonRpcApiEndpoint;
  /// The assigned URL for the node WebSockets API endpoint.
  final pulumi.Input<String> websocketsApiEndpoint;

  /// Creates a new [EndpointInfoResponse].
  /// [jsonRpcApiEndpoint] The assigned URL for the node JSON-RPC API endpoint.
  /// [websocketsApiEndpoint] The assigned URL for the node WebSockets API endpoint.
  EndpointInfoResponse({
    required this.jsonRpcApiEndpoint,
    required this.websocketsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonRpcApiEndpoint': jsonRpcApiEndpoint,
      'websocketsApiEndpoint': websocketsApiEndpoint,
    };
  }

  factory EndpointInfoResponse.fromMap(Map<String, dynamic> map) {
    return EndpointInfoResponse(
      jsonRpcApiEndpoint: pulumi.Input.fromValue(map['jsonRpcApiEndpoint'] as String),
      websocketsApiEndpoint: pulumi.Input.fromValue(map['websocketsApiEndpoint'] as String),
    );
  }
}

