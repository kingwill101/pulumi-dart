// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultPublicEndpointParamsSearchEndpoint {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetAiSearchInstancesResultPublicEndpointParamsSearchEndpoint].
  /// [disabled] Required.
  const GetAiSearchInstancesResultPublicEndpointParamsSearchEndpoint({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetAiSearchInstancesResultPublicEndpointParamsSearchEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultPublicEndpointParamsSearchEndpoint(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
