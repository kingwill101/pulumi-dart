// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_peering_args_doc}
/// Arguments for getPeering.
/// {@endtemplate}
/// {@macro pulumi_peering_get_peering_args_doc}
class GetPeeringArgs {
  /// The name of the peering.
  final pulumi.Input<String> peeringName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPeeringArgs].
  /// [peeringName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  GetPeeringArgs({required this.peeringName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringArgs(
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
