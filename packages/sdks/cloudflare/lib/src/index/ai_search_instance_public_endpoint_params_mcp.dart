// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstancePublicEndpointParamsMcp {
  final pulumi.Input<String?>? description;
  /// Disable MCP endpoint for this public endpoint
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [AiSearchInstancePublicEndpointParamsMcp].
  /// [description] Optional.
  /// [disabled] Disable MCP endpoint for this public endpoint
  const AiSearchInstancePublicEndpointParamsMcp({
    this.description,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
    };
  }

  factory AiSearchInstancePublicEndpointParamsMcp.fromMap(Map<String, dynamic> map) {
    return AiSearchInstancePublicEndpointParamsMcp(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
