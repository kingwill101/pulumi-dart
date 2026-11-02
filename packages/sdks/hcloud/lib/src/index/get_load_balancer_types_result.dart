// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_types_load_balancer_type.dart';

/// Result data returned by getLoadBalancerTypes.
class GetLoadBalancerTypesResult {
  /// The ID of this resource.
  final String? id;
  final List<GetLoadBalancerTypesLoadBalancerType>? loadBalancerTypes;

  /// Creates a new [GetLoadBalancerTypesResult].
  /// [id] The ID of this resource.
  /// [loadBalancerTypes] Optional.
  const GetLoadBalancerTypesResult({
    this.id,
    this.loadBalancerTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'loadBalancerTypes': ?(() { final guardedValue = loadBalancerTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerTypesLoadBalancerType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLoadBalancerTypesResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerTypes: (() { final guardedValue = map['loadBalancerTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerTypesLoadBalancerType>(guardedValue, (value) => GetLoadBalancerTypesLoadBalancerType.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
