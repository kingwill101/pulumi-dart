// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_peering_service_args_doc}
/// Arguments for getPeeringService.
/// {@endtemplate}
/// {@macro pulumi_peering_get_peering_service_args_doc}
class GetPeeringServiceArgs {
  /// The name of the peering.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPeeringServiceArgs].
  /// [peeringServiceName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  const GetPeeringServiceArgs({
    required this.peeringServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringServiceName': peeringServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPeeringServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringServiceArgs(
      peeringServiceName: pulumi.Input.fromValue(map['peeringServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
