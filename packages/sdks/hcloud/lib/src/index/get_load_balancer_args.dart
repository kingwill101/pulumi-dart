// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// ID of the Load Balancer.
  final pulumi.Input<int>? id;

  /// Name of the Load Balancer.
  final pulumi.Input<String>? name;

  /// Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetLoadBalancerArgs].
  /// [id] ID of the Load Balancer.
  /// [name] Name of the Load Balancer.
  /// [withSelector] Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  GetLoadBalancerArgs({this.id, this.name, this.withSelector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
