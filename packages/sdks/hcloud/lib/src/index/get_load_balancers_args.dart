// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancers_get_load_balancers_args_doc}
/// Arguments for getLoadBalancers.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancers_get_load_balancers_args_doc}
class GetLoadBalancersArgs {
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetLoadBalancersArgs].
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetLoadBalancersArgs({
    pulumi.Output<String>? withSelector,
  }) :
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
    };
  }

  factory GetLoadBalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersArgs(
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
    );
  }
}

