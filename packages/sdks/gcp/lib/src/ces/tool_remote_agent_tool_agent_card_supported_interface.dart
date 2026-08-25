// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolRemoteAgentToolAgentCardSupportedInterface {
  /// (Output)
  /// The protocol binding supported at this URL. The core ones officially
  /// supported are JSONRPC, GRPC and HTTP+JSON.
  final pulumi.Input<String?>? protocolBinding;
  /// (Output)
  /// The version of the A2A protocol this interface exposes.
  /// Examples: "0.3", "1.0"
  final pulumi.Input<String?>? protocolVersion;
  /// (Output)
  /// Tenant ID to be used in the request when calling the agent.
  final pulumi.Input<String?>? tenant;
  /// (Output)
  /// The URL where this interface is available. Must be a valid absolute
  /// HTTPS URL in production.
  final pulumi.Input<String?>? url;

  /// Creates a new [ToolRemoteAgentToolAgentCardSupportedInterface].
  /// [protocolBinding] (Output)
  /// [protocolVersion] (Output)
  /// [tenant] (Output)
  /// [url] (Output)
  const ToolRemoteAgentToolAgentCardSupportedInterface({
    this.protocolBinding,
    this.protocolVersion,
    this.tenant,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolBinding': ?protocolBinding,
      'protocolVersion': ?protocolVersion,
      'tenant': ?tenant,
      'url': ?url,
    };
  }

  factory ToolRemoteAgentToolAgentCardSupportedInterface.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentToolAgentCardSupportedInterface(
      protocolBinding: (() { final guardedValue = map['protocolBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolVersion: (() { final guardedValue = map['protocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
