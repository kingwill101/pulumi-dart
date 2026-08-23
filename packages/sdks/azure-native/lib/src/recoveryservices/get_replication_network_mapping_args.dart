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
  const GetReplicationNetworkMappingArgs({
    required this.fabricName,
    required this.networkMappingName,
    required this.networkName,
    required this.resourceGroupName,
    required this.resourceName,
  });

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
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      networkMappingName: pulumi.Input.fromValue(map['networkMappingName'] as String),
      networkName: pulumi.Input.fromValue(map['networkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
