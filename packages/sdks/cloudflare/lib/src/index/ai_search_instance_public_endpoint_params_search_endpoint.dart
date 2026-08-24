// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstancePublicEndpointParamsSearchEndpoint {
  /// Disable search endpoint for this public endpoint
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [AiSearchInstancePublicEndpointParamsSearchEndpoint].
  /// [disabled] Disable search endpoint for this public endpoint
  const AiSearchInstancePublicEndpointParamsSearchEndpoint({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory AiSearchInstancePublicEndpointParamsSearchEndpoint.fromMap(Map<String, dynamic> map) {
    return AiSearchInstancePublicEndpointParamsSearchEndpoint(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
