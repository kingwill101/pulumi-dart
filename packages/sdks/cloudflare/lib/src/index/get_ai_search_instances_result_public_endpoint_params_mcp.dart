// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultPublicEndpointParamsMcp {
  final pulumi.Input<String> description;
  /// Disable MCP endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchInstancesResultPublicEndpointParamsMcp].
  /// [description] Required.
  /// [disabled] Disable MCP endpoint for this public endpoint
  const GetAiSearchInstancesResultPublicEndpointParamsMcp({
    required this.description,
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'disabled': disabled,
    };
  }

  factory GetAiSearchInstancesResultPublicEndpointParamsMcp.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultPublicEndpointParamsMcp(
      description: pulumi.Input.fromValue(map['description'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
