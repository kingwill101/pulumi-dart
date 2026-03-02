// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_bare_metal_machine_key_set_args_doc}
/// Arguments for getBareMetalMachineKeySet.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_bare_metal_machine_key_set_args_doc}
class GetBareMetalMachineKeySetArgs {
  /// The name of the bare metal machine key set.
  final pulumi.Input<String> bareMetalMachineKeySetName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBareMetalMachineKeySetArgs].
  /// [bareMetalMachineKeySetName] The name of the bare metal machine key set.
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBareMetalMachineKeySetArgs({
    required this.bareMetalMachineKeySetName,
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalMachineKeySetName': bareMetalMachineKeySetName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBareMetalMachineKeySetArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineKeySetArgs(
      bareMetalMachineKeySetName: (map['bareMetalMachineKeySetName'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

