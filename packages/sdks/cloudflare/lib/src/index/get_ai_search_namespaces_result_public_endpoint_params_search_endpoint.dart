// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint {
  /// Disable search endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint].
  /// [disabled] Disable search endpoint for this public endpoint
  const GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesResultPublicEndpointParamsSearchEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
