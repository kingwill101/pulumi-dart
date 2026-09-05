// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint {
  /// Disable chat completions endpoint for this public endpoint
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint].
  /// [disabled] Disable chat completions endpoint for this public endpoint
  const AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespacePublicEndpointParamsChatCompletionsEndpoint(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
