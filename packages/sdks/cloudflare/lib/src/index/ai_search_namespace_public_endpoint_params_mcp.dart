// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchNamespacePublicEndpointParamsMcp {
  final pulumi.Input<String?>? description;
  /// Disable MCP endpoint for this public endpoint
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [AiSearchNamespacePublicEndpointParamsMcp].
  /// [description] Optional.
  /// [disabled] Disable MCP endpoint for this public endpoint
  const AiSearchNamespacePublicEndpointParamsMcp({
    this.description,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
    };
  }

  factory AiSearchNamespacePublicEndpointParamsMcp.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespacePublicEndpointParamsMcp(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
