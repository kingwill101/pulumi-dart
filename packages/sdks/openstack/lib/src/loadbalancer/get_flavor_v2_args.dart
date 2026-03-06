// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_get_flavor_v2_get_flavor_v2_args_doc}
/// Arguments for getFlavorV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_get_flavor_v2_get_flavor_v2_args_doc}
class GetFlavorV2Args {
  /// The ID of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  final pulumi.Input<String>? flavorId;
  /// The name of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Load Balancer client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFlavorV2Args].
  /// [flavorId] The ID of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  /// [name] The name of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  /// [region] The region in which to obtain the V2 Load Balancer client.
  const GetFlavorV2Args({
    this.flavorId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorId': ?flavorId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetFlavorV2Args.fromMap(Map<String, dynamic> map) {
    return GetFlavorV2Args(
      flavorId: (() { final guardedValue = map['flavorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

