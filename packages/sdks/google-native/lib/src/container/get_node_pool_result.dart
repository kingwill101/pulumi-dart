// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'best_effort_provisioning_response.dart';
import 'max_pods_constraint_response.dart';
import 'node_config_response.dart';
import 'node_management_response.dart';
import 'node_network_config_response.dart';
import 'node_pool_autoscaling_response.dart';
import 'placement_policy_response.dart';
import 'queued_provisioning_response.dart';
import 'status_condition_response.dart';
import 'update_info_response.dart';
import 'upgrade_settings_response.dart';

/// Result data returned by getNodePool.
class GetNodePoolResult {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final NodePoolAutoscalingResponse? autoscaling;
  /// Enable best effort provisioning for nodes
  final BestEffortProvisioningResponse? bestEffortProvisioning;
  /// Which conditions caused the current node pool state.
  final List<StatusConditionResponse>? conditions;
  /// The node configuration of the pool.
  final NodeConfigResponse? config;
  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final int? initialNodeCount;
  /// [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  final List<String>? instanceGroupUrls;
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final List<String>? locations;
  /// NodeManagement configuration for this NodePool.
  final NodeManagementResponse? management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final MaxPodsConstraintResponse? maxPodsConstraint;
  /// The name of the node pool.
  final String? name;
  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final NodeNetworkConfigResponse? networkConfig;
  /// Specifies the node placement policy.
  final PlacementPolicyResponse? placementPolicy;
  /// [Output only] The pod CIDR block size per node in this node pool.
  final int? podIpv4CidrSize;
  /// Specifies the configuration of queued provisioning.
  final QueuedProvisioningResponse? queuedProvisioning;
  /// [Output only] Server-defined URL for the resource.
  final String? selfLink;
  /// [Output only] The status of the nodes in this pool instance.
  final String? status;
  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  final String? statusMessage;
  /// [Output only] Update info contains relevant information during a node pool update.
  final UpdateInfoResponse? updateInfo;
  /// Upgrade settings control disruption and speed of the upgrade.
  final UpgradeSettingsResponse? upgradeSettings;
  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final String? version;

  /// Creates a new [GetNodePoolResult].
  /// [autoscaling] Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  /// [bestEffortProvisioning] Enable best effort provisioning for nodes
  /// [conditions] Which conditions caused the current node pool state.
  /// [config] The node configuration of the pool.
  /// [etag] This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [initialNodeCount] The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  /// [instanceGroupUrls] [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  /// [management] NodeManagement configuration for this NodePool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of the node pool.
  /// [networkConfig] Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  /// [placementPolicy] Specifies the node placement policy.
  /// [podIpv4CidrSize] [Output only] The pod CIDR block size per node in this node pool.
  /// [queuedProvisioning] Specifies the configuration of queued provisioning.
  /// [selfLink] [Output only] Server-defined URL for the resource.
  /// [status] [Output only] The status of the nodes in this pool instance.
  /// [statusMessage] [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  /// [updateInfo] [Output only] Update info contains relevant information during a node pool update.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  /// [version] The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  const GetNodePoolResult({
    this.autoscaling,
    this.bestEffortProvisioning,
    this.conditions,
    this.config,
    this.etag,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.locations,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.networkConfig,
    this.placementPolicy,
    this.podIpv4CidrSize,
    this.queuedProvisioning,
    this.selfLink,
    this.status,
    this.statusMessage,
    this.updateInfo,
    this.upgradeSettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': ?autoscaling?.toMap(),
      'bestEffortProvisioning': ?bestEffortProvisioning?.toMap(),
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<StatusConditionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'config': ?config?.toMap(),
      'etag': ?etag,
      'initialNodeCount': ?initialNodeCount,
      'instanceGroupUrls': ?instanceGroupUrls,
      'locations': ?locations,
      'management': ?management?.toMap(),
      'maxPodsConstraint': ?maxPodsConstraint?.toMap(),
      'name': ?name,
      'networkConfig': ?networkConfig?.toMap(),
      'placementPolicy': ?placementPolicy?.toMap(),
      'podIpv4CidrSize': ?podIpv4CidrSize,
      'queuedProvisioning': ?queuedProvisioning?.toMap(),
      'selfLink': ?selfLink,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'updateInfo': ?updateInfo?.toMap(),
      'upgradeSettings': ?upgradeSettings?.toMap(),
      'version': ?version,
    };
  }

  factory GetNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetNodePoolResult(
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return NodePoolAutoscalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bestEffortProvisioning: (() { final guardedValue = map['bestEffortProvisioning']; if (guardedValue == null) return null; return BestEffortProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatusConditionResponse>(guardedValue, (value) => StatusConditionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return NodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialNodeCount: (() { final guardedValue = map['initialNodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      instanceGroupUrls: (() { final guardedValue = map['instanceGroupUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return NodeManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maxPodsConstraint: (() { final guardedValue = map['maxPodsConstraint']; if (guardedValue == null) return null; return MaxPodsConstraintResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NodeNetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      placementPolicy: (() { final guardedValue = map['placementPolicy']; if (guardedValue == null) return null; return PlacementPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      podIpv4CidrSize: (() { final guardedValue = map['podIpv4CidrSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      queuedProvisioning: (() { final guardedValue = map['queuedProvisioning']; if (guardedValue == null) return null; return QueuedProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateInfo: (() { final guardedValue = map['updateInfo']; if (guardedValue == null) return null; return UpdateInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return UpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
