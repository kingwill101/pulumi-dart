// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_types_load_balancer_type.dart';

/// Result data returned by getLoadBalancerTypes.
class GetLoadBalancerTypesResult {
  /// The ID of this resource.
  final String id;
  final List<GetLoadBalancerTypesLoadBalancerType> loadBalancerTypes;

  /// Creates a new [GetLoadBalancerTypesResult].
  /// [id] The ID of this resource.
  /// [loadBalancerTypes] Required.
  const GetLoadBalancerTypesResult({
    required this.id,
    required this.loadBalancerTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'loadBalancerTypes': pulumi.Input.encodeList<GetLoadBalancerTypesLoadBalancerType, Map<String, dynamic>>(loadBalancerTypes, (value) => value.toMap()),
    };
  }

  factory GetLoadBalancerTypesResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypesResult(
      id: map['id'] as String,
      loadBalancerTypes: pulumi.Input.decodeList<GetLoadBalancerTypesLoadBalancerType>(map['loadBalancerTypes']!, (value) => GetLoadBalancerTypesLoadBalancerType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
