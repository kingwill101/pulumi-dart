// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancePublicEndpointParamsSearchEndpoint {
  /// Disable search endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchInstancePublicEndpointParamsSearchEndpoint].
  /// [disabled] Disable search endpoint for this public endpoint
  const GetAiSearchInstancePublicEndpointParamsSearchEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchInstancePublicEndpointParamsSearchEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancePublicEndpointParamsSearchEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
