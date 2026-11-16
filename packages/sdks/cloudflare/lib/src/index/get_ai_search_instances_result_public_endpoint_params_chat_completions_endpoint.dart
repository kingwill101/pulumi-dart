// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultPublicEndpointParamsChatCompletionsEndpoint {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchInstancesResultPublicEndpointParamsChatCompletionsEndpoint].
  /// [disabled] Required.
  const GetAiSearchInstancesResultPublicEndpointParamsChatCompletionsEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchInstancesResultPublicEndpointParamsChatCompletionsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultPublicEndpointParamsChatCompletionsEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
