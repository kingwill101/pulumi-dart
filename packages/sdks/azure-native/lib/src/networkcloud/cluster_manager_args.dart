// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_resource_group_configuration.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_networkcloud_cluster_manager_args_doc}
/// The set of arguments for ClusterManager.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_cluster_manager_args_doc}
class ClusterManagerArgs {
  /// The resource ID of the Log Analytics workspace that is used for the logs collection.
  final pulumi.Input<String>? analyticsWorkspaceId;
  /// Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The Azure availability zones within the region that will be used to support the cluster manager resource.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The name of the cluster manager.
  final pulumi.Input<String>? clusterManagerName;
  /// The resource ID of the fabric controller that has one to one mapping with the cluster manager.
  final pulumi.Input<String> fabricControllerId;
  /// The identity of the cluster manager.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The configuration of the managed resource group associated with the resource.
  final pulumi.Input<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The size of the Azure virtual machines to use for hosting the cluster manager resource.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [ClusterManagerArgs].
  /// [analyticsWorkspaceId] The resource ID of the Log Analytics workspace that is used for the logs collection.
  /// [availabilityZones] Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The Azure availability zones within the region that will be used to support the cluster manager resource.
  /// [clusterManagerName] The name of the cluster manager.
  /// [fabricControllerId] The resource ID of the fabric controller that has one to one mapping with the cluster manager.
  /// [identity] The identity of the cluster manager.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] The configuration of the managed resource group associated with the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [vmSize] Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The size of the Azure virtual machines to use for hosting the cluster manager resource.
  ClusterManagerArgs({
    pulumi.Output<String>? analyticsWorkspaceId,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<String>? clusterManagerName,
    required pulumi.Output<String> fabricControllerId,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vmSize,
  }) :
      analyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(analyticsWorkspaceId),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      clusterManagerName = pulumi.Input.asOptionalInput<String>(clusterManagerName),
      fabricControllerId = pulumi.Input.asInput<String>(fabricControllerId),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedResourceGroupConfiguration>(managedResourceGroupConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsWorkspaceId': ?analyticsWorkspaceId,
      'availabilityZones': ?availabilityZones,
      'clusterManagerName': ?clusterManagerName,
      'fabricControllerId': fabricControllerId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vmSize': ?vmSize,
    };
  }

  factory ClusterManagerArgs.fromMap(Map<String, dynamic> map) {
    return ClusterManagerArgs(
      analyticsWorkspaceId: map['analyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['analyticsWorkspaceId'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      clusterManagerName: map['clusterManagerName'] == null ? null : pulumi.Output.create<String>(map['clusterManagerName'] as String),
      fabricControllerId: pulumi.Output.create<String>(map['fabricControllerId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : pulumi.Output.create<ManagedResourceGroupConfiguration>(ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
    );
  }
}

