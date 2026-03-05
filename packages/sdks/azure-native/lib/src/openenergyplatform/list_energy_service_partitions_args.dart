// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_openenergyplatform_list_energy_service_partitions_args_doc}
/// Arguments for listEnergyServicePartitions.
/// {@endtemplate}
/// {@macro pulumi_openenergyplatform_list_energy_service_partitions_args_doc}
class ListEnergyServicePartitionsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListEnergyServicePartitionsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The resource name.
  ListEnergyServicePartitionsArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListEnergyServicePartitionsArgs.fromMap(Map<String, dynamic> map) {
    return ListEnergyServicePartitionsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

