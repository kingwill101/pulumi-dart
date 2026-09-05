// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint {
  /// Disable chat completions endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint].
  /// [disabled] Disable chat completions endpoint for this public endpoint
  const GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesResultPublicEndpointParamsChatCompletionsEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
