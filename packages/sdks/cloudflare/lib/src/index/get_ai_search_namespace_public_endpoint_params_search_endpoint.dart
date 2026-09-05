// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespacePublicEndpointParamsSearchEndpoint {
  /// Disable search endpoint for this public endpoint
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchNamespacePublicEndpointParamsSearchEndpoint].
  /// [disabled] Disable search endpoint for this public endpoint
  const GetAiSearchNamespacePublicEndpointParamsSearchEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchNamespacePublicEndpointParamsSearchEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacePublicEndpointParamsSearchEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
