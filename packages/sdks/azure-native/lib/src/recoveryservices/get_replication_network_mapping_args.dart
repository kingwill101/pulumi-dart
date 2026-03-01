// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_network_mapping_args_doc}
/// Arguments for getReplicationNetworkMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_network_mapping_args_doc}
class GetReplicationNetworkMappingArgs {
  /// Primary fabric name.
  final pulumi.Input<String> fabricName;
  /// Network mapping name.
  final pulumi.Input<String> networkMappingName;
  /// Primary network name.
  final pulumi.Input<String> networkName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationNetworkMappingArgs].
  /// [fabricName] Primary fabric name.
  /// [networkMappingName] Network mapping name.
  /// [networkName] Primary network name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationNetworkMappingArgs({
    required pulumi.Output<String> fabricName,
    required pulumi.Output<String> networkMappingName,
    required pulumi.Output<String> networkName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      networkMappingName = pulumi.Input.asInput<String>(networkMappingName),
      networkName = pulumi.Input.asInput<String>(networkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'networkMappingName': networkMappingName,
      'networkName': networkName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationNetworkMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationNetworkMappingArgs(
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      networkMappingName: pulumi.Output.create<String>(map['networkMappingName'] as String),
      networkName: pulumi.Output.create<String>(map['networkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

