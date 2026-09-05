// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchNamespacePublicEndpointParamsSearchEndpoint {
  /// Disable search endpoint for this public endpoint
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [AiSearchNamespacePublicEndpointParamsSearchEndpoint].
  /// [disabled] Disable search endpoint for this public endpoint
  const AiSearchNamespacePublicEndpointParamsSearchEndpoint({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory AiSearchNamespacePublicEndpointParamsSearchEndpoint.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespacePublicEndpointParamsSearchEndpoint(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
