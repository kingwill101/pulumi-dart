// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization.dart';
import 'cluster_control_plane.dart';
import 'cluster_control_plane_encryption.dart';
import 'cluster_fleet.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_networking.dart';
import 'cluster_system_addons_config.dart';

/// {@template pulumi_edgecontainer_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_edgecontainer_cluster_cluster_args_doc}
class ClusterArgs {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  final pulumi.Input<ClusterAuthorization> authorization;
  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlane?>? controlPlane;
  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneEncryption?>? controlPlaneEncryption;
  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  final pulumi.Input<int?>? defaultMaxPodsPerNode;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Address pools for cluster data plane external load balancing.
  final pulumi.Input<List<String>?>? externalLoadBalancerIpv4AddressPools;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final pulumi.Input<ClusterFleet> fleet;
  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicy?>? maintenancePolicy;
  /// The GDCE cluster name.
  final pulumi.Input<String?>? name;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworking> networking;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  final pulumi.Input<String?>? releaseChannel;
  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  final pulumi.Input<ClusterSystemAddonsConfig?>? systemAddonsConfig;
  /// The target cluster version. For example: "1.5.0".
  final pulumi.Input<String?>? targetVersion;

  /// Creates a new [ClusterArgs].
  /// [authorization] RBAC policy that will be applied and managed by GEC.
  /// [controlPlane] The configuration of the cluster control plane.
  /// [controlPlaneEncryption] Remote control plane disk encryption options. This field is only used when
  /// [defaultMaxPodsPerNode] The default maximum number of pods per node used if a maximum value is not
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [externalLoadBalancerIpv4AddressPools] Address pools for cluster data plane external load balancing.
  /// [fleet] Fleet related configuration.
  /// [labels] User-defined labels for the edgecloud cluster.
  /// [location] The location of the resource.
  /// [maintenancePolicy] Cluster-wide maintenance policy configuration.
  /// [name] The GDCE cluster name.
  /// [networking] Fleet related configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannel] The release channel a cluster is subscribed to.
  /// [systemAddonsConfig] Config that customers are allowed to define for GDCE system add-ons.
  /// [targetVersion] The target cluster version. For example: "1.5.0".
  const ClusterArgs({
    required this.authorization,
    this.controlPlane,
    this.controlPlaneEncryption,
    this.defaultMaxPodsPerNode,
    this.deletionPolicy,
    this.externalLoadBalancerIpv4AddressPools,
    required this.fleet,
    this.labels,
    required this.location,
    this.maintenancePolicy,
    this.name,
    required this.networking,
    this.project,
    this.releaseChannel,
    this.systemAddonsConfig,
    this.targetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': pulumi.Input.mapInputValue<ClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'controlPlaneEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneEncryption, Map<String, dynamic>>(controlPlaneEncryption, (value) => value.toMap()),
      'defaultMaxPodsPerNode': ?defaultMaxPodsPerNode,
      'deletionPolicy': ?deletionPolicy,
      'externalLoadBalancerIpv4AddressPools': ?externalLoadBalancerIpv4AddressPools,
      'fleet': pulumi.Input.mapInputValue<ClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'name': ?name,
      'networking': pulumi.Input.mapInputValue<ClusterNetworking, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'project': ?project,
      'releaseChannel': ?releaseChannel,
      'systemAddonsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSystemAddonsConfig, Map<String, dynamic>>(systemAddonsConfig, (value) => value.toMap()),
      'targetVersion': ?targetVersion,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      authorization: pulumi.Input.fromValue(ClusterAuthorization.fromMap((map['authorization']! as Map).cast<String, dynamic>())),
      controlPlane: (() { final guardedValue = map['controlPlane']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlane.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlaneEncryption: (() { final guardedValue = map['controlPlaneEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterControlPlaneEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultMaxPodsPerNode: (() { final guardedValue = map['defaultMaxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalLoadBalancerIpv4AddressPools: (() { final guardedValue = map['externalLoadBalancerIpv4AddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fleet: pulumi.Input.fromValue(ClusterFleet.fromMap((map['fleet']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networking: pulumi.Input.fromValue(ClusterNetworking.fromMap((map['networking']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemAddonsConfig: (() { final guardedValue = map['systemAddonsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSystemAddonsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetVersion: (() { final guardedValue = map['targetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
