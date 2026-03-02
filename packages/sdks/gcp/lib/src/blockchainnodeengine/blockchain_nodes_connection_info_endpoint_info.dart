// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlockchainNodesConnectionInfoEndpointInfo {
  /// (Output)
  /// The assigned URL for the node JSON-RPC API endpoint.
  final pulumi.Input<String>? jsonRpcApiEndpoint;
  /// (Output)
  /// The assigned URL for the node WebSockets API endpoint.
  final pulumi.Input<String>? websocketsApiEndpoint;

  /// Creates a new [BlockchainNodesConnectionInfoEndpointInfo].
  /// [jsonRpcApiEndpoint] (Output)
  /// [websocketsApiEndpoint] (Output)
  BlockchainNodesConnectionInfoEndpointInfo({
    this.jsonRpcApiEndpoint,
    this.websocketsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonRpcApiEndpoint': ?jsonRpcApiEndpoint,
      'websocketsApiEndpoint': ?websocketsApiEndpoint,
    };
  }

  factory BlockchainNodesConnectionInfoEndpointInfo.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesConnectionInfoEndpointInfo(
      jsonRpcApiEndpoint: map['jsonRpcApiEndpoint'] == null ? null : (map['jsonRpcApiEndpoint'] as String).input(),
      websocketsApiEndpoint: map['websocketsApiEndpoint'] == null ? null : (map['websocketsApiEndpoint'] as String).input(),
    );
  }
}

