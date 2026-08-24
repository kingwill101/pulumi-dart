// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint {
  /// Disable chat completions endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint].
  /// [disabled] Disable chat completions endpoint for this public endpoint
  const GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancePublicEndpointParamsChatCompletionsEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
