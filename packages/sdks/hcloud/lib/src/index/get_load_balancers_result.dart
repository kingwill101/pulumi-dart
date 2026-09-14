// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer.dart';

/// Result data returned by getLoadBalancers.
class GetLoadBalancersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (list) List of all matching load balancers. See `data.hcloud_load_balancer` for schema.
  final List<GetLoadBalancersLoadBalancer>? loadBalancers;
  final String? withSelector;

  /// Creates a new [GetLoadBalancersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancers] (list) List of all matching load balancers. See `data.hcloud_load_balancer` for schema.
  /// [withSelector] Optional.
  const GetLoadBalancersResult({
    this.id,
    this.loadBalancers,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'loadBalancers': ?(() { final guardedValue = loadBalancers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancersLoadBalancer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
    };
  }

  factory GetLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancers: (() { final guardedValue = map['loadBalancers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancersLoadBalancer>(guardedValue, (value) => GetLoadBalancersLoadBalancer.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
