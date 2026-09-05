// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint {
  /// Disable chat completions endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint].
  /// [disabled] Disable chat completions endpoint for this public endpoint
  const GetAiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
