// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_networks_get_networks_args_doc}
/// Arguments for getNetworks.
/// {@endtemplate}
/// {@macro pulumi_index_get_networks_get_networks_args_doc}
class GetNetworksArgs {
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetNetworksArgs].
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetNetworksArgs({
    pulumi.Output<String>? withSelector,
  }) :
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
    };
  }

  factory GetNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworksArgs(
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
    );
  }
}

