// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer.dart';

/// Result data returned by getLoadBalancers.
class GetLoadBalancersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (list) List of all matching load balancers. See `data.hcloud_load_balancer` for schema.
  final List<GetLoadBalancersLoadBalancer> loadBalancers;
  final String? withSelector;

  /// Creates a new [GetLoadBalancersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancers] (list) List of all matching load balancers. See `data.hcloud_load_balancer` for schema.
  /// [withSelector] Optional.
  const GetLoadBalancersResult({
    required this.id,
    required this.loadBalancers,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'loadBalancers': pulumi.Input.encodeList<GetLoadBalancersLoadBalancer, Map<String, dynamic>>(loadBalancers, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResult(
      id: map['id'] as String,
      loadBalancers: pulumi.Input.decodeList<GetLoadBalancersLoadBalancer>(map['loadBalancers']!, (value) => GetLoadBalancersLoadBalancer.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

