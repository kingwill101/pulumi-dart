// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface {
  /// The protocol binding supported at this URL. The core ones officially
  /// supported are JSONRPC, GRPC and HTTP+JSON.
  final pulumi.Input<String> protocolBinding;
  /// The version of the A2A protocol this interface exposes.
  /// Examples: "0.3", "1.0"
  final pulumi.Input<String> protocolVersion;
  /// Tenant ID to be used in the request when calling the agent.
  final pulumi.Input<String?>? tenant;
  /// The URL where this interface is available. Must be a valid absolute HTTPS
  /// URL in production.
  final pulumi.Input<String> url;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface].
  /// [protocolBinding] The protocol binding supported at this URL. The core ones officially
  /// [protocolVersion] The version of the A2A protocol this interface exposes.
  /// [tenant] Tenant ID to be used in the request when calling the agent.
  /// [url] The URL where this interface is available. Must be a valid absolute HTTPS
  const AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface({
    required this.protocolBinding,
    required this.protocolVersion,
    this.tenant,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolBinding': protocolBinding,
      'protocolVersion': protocolVersion,
      'tenant': ?tenant,
      'url': url,
    };
  }

  factory AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigAgentCardSupportedInterface(
      protocolBinding: pulumi.Input.fromValue(map['protocolBinding'] as String),
      protocolVersion: pulumi.Input.fromValue(map['protocolVersion'] as String),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
