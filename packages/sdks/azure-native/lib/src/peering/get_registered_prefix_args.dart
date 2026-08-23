// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_registered_prefix_args_doc}
/// Arguments for getRegisteredPrefix.
/// {@endtemplate}
/// {@macro pulumi_peering_get_registered_prefix_args_doc}
class GetRegisteredPrefixArgs {
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The name of the registered prefix.
  final pulumi.Input<String> registeredPrefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegisteredPrefixArgs].
  /// [peeringName] The name of the peering.
  /// [registeredPrefixName] The name of the registered prefix.
  /// [resourceGroupName] The name of the resource group.
  const GetRegisteredPrefixArgs({
    required this.peeringName,
    required this.registeredPrefixName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'registeredPrefixName': registeredPrefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegisteredPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetRegisteredPrefixArgs(
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      registeredPrefixName: pulumi.Input.fromValue(map['registeredPrefixName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
