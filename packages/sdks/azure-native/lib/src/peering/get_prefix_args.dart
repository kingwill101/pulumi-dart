// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_prefix_args_doc}
/// Arguments for getPrefix.
/// {@endtemplate}
/// {@macro pulumi_peering_get_prefix_args_doc}
class GetPrefixArgs {
  /// The properties to be expanded.
  final pulumi.Input<String>? expand;
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the prefix.
  final pulumi.Input<String> prefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrefixArgs].
  /// [expand] The properties to be expanded.
  /// [peeringServiceName] The name of the peering service.
  /// [prefixName] The name of the prefix.
  /// [resourceGroupName] The name of the resource group.
  GetPrefixArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> peeringServiceName,
    required pulumi.Output<String> prefixName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      peeringServiceName = pulumi.Input.asInput<String>(peeringServiceName),
      prefixName = pulumi.Input.asInput<String>(prefixName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'peeringServiceName': peeringServiceName,
      'prefixName': prefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      peeringServiceName: pulumi.Output.create<String>(map['peeringServiceName'] as String),
      prefixName: pulumi.Output.create<String>(map['prefixName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

