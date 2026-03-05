// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_configuration.dart';
import 'administrator_configuration.dart';
import 'control_plane_node_configuration.dart';
import 'extended_location.dart';
import 'initial_agent_pool_configuration.dart';
import 'managed_resource_group_configuration.dart';
import 'network_configuration.dart';

/// {@template pulumi_networkcloud_kubernetes_cluster_args_doc}
/// The set of arguments for KubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_kubernetes_cluster_args_doc}
class KubernetesClusterArgs {
  /// The Azure Active Directory Integration properties.
  final pulumi.Input<AadConfiguration>? aadConfiguration;
  /// The administrative credentials that will be applied to the control plane and agent pool nodes that do not specify their own values.
  final pulumi.Input<AdministratorConfiguration>? administratorConfiguration;
  /// The defining characteristics of the control plane for this Kubernetes Cluster.
  final pulumi.Input<ControlPlaneNodeConfiguration> controlPlaneNodeConfiguration;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The agent pools that are created with this Kubernetes cluster for running critical system services and workloads. This data in this field is only used during creation, and the field will be empty following the creation of the Kubernetes Cluster. After creation, the management of agent pools is done using the agentPools sub-resource.
  final pulumi.Input<List<InitialAgentPoolConfiguration>> initialAgentPoolConfigurations;
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String>? kubernetesClusterName;
  /// The Kubernetes version for this cluster.
  final pulumi.Input<String> kubernetesVersion;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The configuration of the managed resource group associated with the resource.
  final pulumi.Input<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
  /// The configuration of the Kubernetes cluster networking, including the attachment of networks that span the cluster.
  final pulumi.Input<NetworkConfiguration> networkConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KubernetesClusterArgs].
  /// [aadConfiguration] The Azure Active Directory Integration properties.
  /// [administratorConfiguration] The administrative credentials that will be applied to the control plane and agent pool nodes that do not specify their own values.
  /// [controlPlaneNodeConfiguration] The defining characteristics of the control plane for this Kubernetes Cluster.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [initialAgentPoolConfigurations] The agent pools that are created with this Kubernetes cluster for running critical system services and workloads. This data in this field is only used during creation, and the field will be empty following the creation of the Kubernetes Cluster. After creation, the management of agent pools is done using the agentPools sub-resource.
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [kubernetesVersion] The Kubernetes version for this cluster.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] The configuration of the managed resource group associated with the resource.
  /// [networkConfiguration] The configuration of the Kubernetes cluster networking, including the attachment of networks that span the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  KubernetesClusterArgs({
    this.aadConfiguration,
    this.administratorConfiguration,
    required this.controlPlaneNodeConfiguration,
    required this.extendedLocation,
    required this.initialAgentPoolConfigurations,
    this.kubernetesClusterName,
    required this.kubernetesVersion,
    this.location,
    this.managedResourceGroupConfiguration,
    required this.networkConfiguration,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadConfiguration': ?pulumi.Input.mapOptionalInputValue<AadConfiguration, Map<String, dynamic>>(aadConfiguration, (value) => value.toMap()),
      'administratorConfiguration': ?pulumi.Input.mapOptionalInputValue<AdministratorConfiguration, Map<String, dynamic>>(administratorConfiguration, (value) => value.toMap()),
      'controlPlaneNodeConfiguration': pulumi.Input.mapInputValue<ControlPlaneNodeConfiguration, Map<String, dynamic>>(controlPlaneNodeConfiguration, (value) => value.toMap()),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'initialAgentPoolConfigurations': pulumi.Input.mapInputValue<List<InitialAgentPoolConfiguration>, List<Map<String, dynamic>>>(initialAgentPoolConfigurations, (value) => pulumi.Input.encodeList<InitialAgentPoolConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubernetesClusterName': ?kubernetesClusterName,
      'kubernetesVersion': kubernetesVersion,
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'networkConfiguration': pulumi.Input.mapInputValue<NetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterArgs(
      aadConfiguration: (() { final guardedValue = map['aadConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AadConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      administratorConfiguration: (() { final guardedValue = map['administratorConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdministratorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlaneNodeConfiguration: pulumi.Input.fromValue(ControlPlaneNodeConfiguration.fromMap((map['controlPlaneNodeConfiguration']! as Map).cast<String, dynamic>())),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      initialAgentPoolConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<InitialAgentPoolConfiguration>(map['initialAgentPoolConfigurations']!, (value) => InitialAgentPoolConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      kubernetesClusterName: (() { final guardedValue = map['kubernetesClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesVersion: pulumi.Input.fromValue(map['kubernetesVersion'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedResourceGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkConfiguration: pulumi.Input.fromValue(NetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

