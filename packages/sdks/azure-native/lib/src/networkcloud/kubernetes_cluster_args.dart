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
    pulumi.Output<AadConfiguration>? aadConfiguration,
    pulumi.Output<AdministratorConfiguration>? administratorConfiguration,
    required pulumi.Output<ControlPlaneNodeConfiguration> controlPlaneNodeConfiguration,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<List<InitialAgentPoolConfiguration>> initialAgentPoolConfigurations,
    pulumi.Output<String>? kubernetesClusterName,
    required pulumi.Output<String> kubernetesVersion,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration,
    required pulumi.Output<NetworkConfiguration> networkConfiguration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aadConfiguration = pulumi.Input.asOptionalInput<AadConfiguration>(aadConfiguration),
      administratorConfiguration = pulumi.Input.asOptionalInput<AdministratorConfiguration>(administratorConfiguration),
      controlPlaneNodeConfiguration = pulumi.Input.asInput<ControlPlaneNodeConfiguration>(controlPlaneNodeConfiguration),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      initialAgentPoolConfigurations = pulumi.Input.asInput<List<InitialAgentPoolConfiguration>>(initialAgentPoolConfigurations),
      kubernetesClusterName = pulumi.Input.asOptionalInput<String>(kubernetesClusterName),
      kubernetesVersion = pulumi.Input.asInput<String>(kubernetesVersion),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedResourceGroupConfiguration>(managedResourceGroupConfiguration),
      networkConfiguration = pulumi.Input.asInput<NetworkConfiguration>(networkConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      aadConfiguration: map['aadConfiguration'] == null ? null : pulumi.Output.create<AadConfiguration>(AadConfiguration.fromMap((map['aadConfiguration'] as Map).cast<String, dynamic>())),
      administratorConfiguration: map['administratorConfiguration'] == null ? null : pulumi.Output.create<AdministratorConfiguration>(AdministratorConfiguration.fromMap((map['administratorConfiguration'] as Map).cast<String, dynamic>())),
      controlPlaneNodeConfiguration: pulumi.Output.create<ControlPlaneNodeConfiguration>(ControlPlaneNodeConfiguration.fromMap((map['controlPlaneNodeConfiguration'] as Map).cast<String, dynamic>())),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      initialAgentPoolConfigurations: pulumi.Output.create<List<InitialAgentPoolConfiguration>>(pulumi.Input.decodeList<InitialAgentPoolConfiguration>(map['initialAgentPoolConfigurations'], (value) => InitialAgentPoolConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      kubernetesClusterName: map['kubernetesClusterName'] == null ? null : pulumi.Output.create<String>(map['kubernetesClusterName'] as String),
      kubernetesVersion: pulumi.Output.create<String>(map['kubernetesVersion'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : pulumi.Output.create<ManagedResourceGroupConfiguration>(ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())),
      networkConfiguration: pulumi.Output.create<NetworkConfiguration>(NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

