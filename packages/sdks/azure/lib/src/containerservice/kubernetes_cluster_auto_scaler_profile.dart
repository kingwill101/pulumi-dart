// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAutoScalerProfile {
  /// Detect similar node groups and balance the number of nodes between them. Defaults to `false`.
  final pulumi.Input<bool>? balanceSimilarNodeGroups;
  /// Whether DaemonSet pods will be gracefully terminated from empty nodes. Defaults to `false`.
  final pulumi.Input<bool>? daemonsetEvictionForEmptyNodesEnabled;
  /// Whether DaemonSet pods will be gracefully terminated from non-empty nodes. Defaults to `true`.
  final pulumi.Input<bool>? daemonsetEvictionForOccupiedNodesEnabled;
  /// Maximum number of empty nodes that can be deleted at the same time. Defaults to `10`.
  final pulumi.Input<String>? emptyBulkDeleteMax;
  /// Expander to use. Possible values are `least-waste`, `priority`, `most-pods` and `random`. Defaults to `random`.
  final pulumi.Input<String>? expander;
  /// Whether DaemonSet pods will be ignored when calculating resource utilization for scale down. Defaults to `false`.
  final pulumi.Input<bool>? ignoreDaemonsetsUtilizationEnabled;
  /// Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. Defaults to `600`.
  final pulumi.Input<String>? maxGracefulTerminationSec;
  /// Maximum time the autoscaler waits for a node to be provisioned. Defaults to `15m`.
  final pulumi.Input<String>? maxNodeProvisioningTime;
  /// Maximum Number of allowed unready nodes. Defaults to `3`.
  final pulumi.Input<int>? maxUnreadyNodes;
  /// Maximum percentage of unready nodes the cluster autoscaler will stop if the percentage is exceeded. Defaults to `45`.
  final pulumi.Input<double>? maxUnreadyPercentage;
  /// For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. Defaults to `10s`.
  final pulumi.Input<String>? newPodScaleUpDelay;
  /// How long after the scale up of AKS nodes the scale down evaluation resumes. Defaults to `10m`.
  final pulumi.Input<String>? scaleDownDelayAfterAdd;
  /// How long after node deletion that scale down evaluation resumes. Defaults to the value used for `scan_interval`.
  final pulumi.Input<String>? scaleDownDelayAfterDelete;
  /// How long after scale down failure that scale down evaluation resumes. Defaults to `3m`.
  final pulumi.Input<String>? scaleDownDelayAfterFailure;
  /// How long a node should be unneeded before it is eligible for scale down. Defaults to `10m`.
  final pulumi.Input<String>? scaleDownUnneeded;
  /// How long an unready node should be unneeded before it is eligible for scale down. Defaults to `20m`.
  final pulumi.Input<String>? scaleDownUnready;
  /// Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. Defaults to `0.5`.
  final pulumi.Input<String>? scaleDownUtilizationThreshold;
  /// How often the AKS Cluster should be re-evaluated for scale up/down. Defaults to `10s`.
  final pulumi.Input<String>? scanInterval;
  /// If `true` cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath. Defaults to `false`.
  /// <!-- Note: Although Azure’s API default is `true`, Terraform sends the zero-value (`false`) whenever an `auto_scaler_profile` block is present but this field isn’t set. -->
  final pulumi.Input<bool>? skipNodesWithLocalStorage;
  /// If `true` cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Defaults to `true`.
  final pulumi.Input<bool>? skipNodesWithSystemPods;

  /// Creates a new [KubernetesClusterAutoScalerProfile].
  /// [balanceSimilarNodeGroups] Detect similar node groups and balance the number of nodes between them. Defaults to `false`.
  /// [daemonsetEvictionForEmptyNodesEnabled] Whether DaemonSet pods will be gracefully terminated from empty nodes. Defaults to `false`.
  /// [daemonsetEvictionForOccupiedNodesEnabled] Whether DaemonSet pods will be gracefully terminated from non-empty nodes. Defaults to `true`.
  /// [emptyBulkDeleteMax] Maximum number of empty nodes that can be deleted at the same time. Defaults to `10`.
  /// [expander] Expander to use. Possible values are `least-waste`, `priority`, `most-pods` and `random`. Defaults to `random`.
  /// [ignoreDaemonsetsUtilizationEnabled] Whether DaemonSet pods will be ignored when calculating resource utilization for scale down. Defaults to `false`.
  /// [maxGracefulTerminationSec] Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. Defaults to `600`.
  /// [maxNodeProvisioningTime] Maximum time the autoscaler waits for a node to be provisioned. Defaults to `15m`.
  /// [maxUnreadyNodes] Maximum Number of allowed unready nodes. Defaults to `3`.
  /// [maxUnreadyPercentage] Maximum percentage of unready nodes the cluster autoscaler will stop if the percentage is exceeded. Defaults to `45`.
  /// [newPodScaleUpDelay] For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. Defaults to `10s`.
  /// [scaleDownDelayAfterAdd] How long after the scale up of AKS nodes the scale down evaluation resumes. Defaults to `10m`.
  /// [scaleDownDelayAfterDelete] How long after node deletion that scale down evaluation resumes. Defaults to the value used for `scan_interval`.
  /// [scaleDownDelayAfterFailure] How long after scale down failure that scale down evaluation resumes. Defaults to `3m`.
  /// [scaleDownUnneeded] How long a node should be unneeded before it is eligible for scale down. Defaults to `10m`.
  /// [scaleDownUnready] How long an unready node should be unneeded before it is eligible for scale down. Defaults to `20m`.
  /// [scaleDownUtilizationThreshold] Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. Defaults to `0.5`.
  /// [scanInterval] How often the AKS Cluster should be re-evaluated for scale up/down. Defaults to `10s`.
  /// [skipNodesWithLocalStorage] If `true` cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath. Defaults to `false`.
  /// [skipNodesWithSystemPods] If `true` cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Defaults to `true`.
  KubernetesClusterAutoScalerProfile({
    this.balanceSimilarNodeGroups,
    this.daemonsetEvictionForEmptyNodesEnabled,
    this.daemonsetEvictionForOccupiedNodesEnabled,
    this.emptyBulkDeleteMax,
    this.expander,
    this.ignoreDaemonsetsUtilizationEnabled,
    this.maxGracefulTerminationSec,
    this.maxNodeProvisioningTime,
    this.maxUnreadyNodes,
    this.maxUnreadyPercentage,
    this.newPodScaleUpDelay,
    this.scaleDownDelayAfterAdd,
    this.scaleDownDelayAfterDelete,
    this.scaleDownDelayAfterFailure,
    this.scaleDownUnneeded,
    this.scaleDownUnready,
    this.scaleDownUtilizationThreshold,
    this.scanInterval,
    this.skipNodesWithLocalStorage,
    this.skipNodesWithSystemPods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balanceSimilarNodeGroups': ?balanceSimilarNodeGroups,
      'daemonsetEvictionForEmptyNodesEnabled': ?daemonsetEvictionForEmptyNodesEnabled,
      'daemonsetEvictionForOccupiedNodesEnabled': ?daemonsetEvictionForOccupiedNodesEnabled,
      'emptyBulkDeleteMax': ?emptyBulkDeleteMax,
      'expander': ?expander,
      'ignoreDaemonsetsUtilizationEnabled': ?ignoreDaemonsetsUtilizationEnabled,
      'maxGracefulTerminationSec': ?maxGracefulTerminationSec,
      'maxNodeProvisioningTime': ?maxNodeProvisioningTime,
      'maxUnreadyNodes': ?maxUnreadyNodes,
      'maxUnreadyPercentage': ?maxUnreadyPercentage,
      'newPodScaleUpDelay': ?newPodScaleUpDelay,
      'scaleDownDelayAfterAdd': ?scaleDownDelayAfterAdd,
      'scaleDownDelayAfterDelete': ?scaleDownDelayAfterDelete,
      'scaleDownDelayAfterFailure': ?scaleDownDelayAfterFailure,
      'scaleDownUnneeded': ?scaleDownUnneeded,
      'scaleDownUnready': ?scaleDownUnready,
      'scaleDownUtilizationThreshold': ?scaleDownUtilizationThreshold,
      'scanInterval': ?scanInterval,
      'skipNodesWithLocalStorage': ?skipNodesWithLocalStorage,
      'skipNodesWithSystemPods': ?skipNodesWithSystemPods,
    };
  }

  factory KubernetesClusterAutoScalerProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAutoScalerProfile(
      balanceSimilarNodeGroups: map['balanceSimilarNodeGroups'] == null ? null : (map['balanceSimilarNodeGroups'] as bool).input(),
      daemonsetEvictionForEmptyNodesEnabled: map['daemonsetEvictionForEmptyNodesEnabled'] == null ? null : (map['daemonsetEvictionForEmptyNodesEnabled'] as bool).input(),
      daemonsetEvictionForOccupiedNodesEnabled: map['daemonsetEvictionForOccupiedNodesEnabled'] == null ? null : (map['daemonsetEvictionForOccupiedNodesEnabled'] as bool).input(),
      emptyBulkDeleteMax: map['emptyBulkDeleteMax'] == null ? null : (map['emptyBulkDeleteMax'] as String).input(),
      expander: map['expander'] == null ? null : (map['expander'] as String).input(),
      ignoreDaemonsetsUtilizationEnabled: map['ignoreDaemonsetsUtilizationEnabled'] == null ? null : (map['ignoreDaemonsetsUtilizationEnabled'] as bool).input(),
      maxGracefulTerminationSec: map['maxGracefulTerminationSec'] == null ? null : (map['maxGracefulTerminationSec'] as String).input(),
      maxNodeProvisioningTime: map['maxNodeProvisioningTime'] == null ? null : (map['maxNodeProvisioningTime'] as String).input(),
      maxUnreadyNodes: map['maxUnreadyNodes'] == null ? null : (map['maxUnreadyNodes'] as int).input(),
      maxUnreadyPercentage: map['maxUnreadyPercentage'] == null ? null : (map['maxUnreadyPercentage'] as double).input(),
      newPodScaleUpDelay: map['newPodScaleUpDelay'] == null ? null : (map['newPodScaleUpDelay'] as String).input(),
      scaleDownDelayAfterAdd: map['scaleDownDelayAfterAdd'] == null ? null : (map['scaleDownDelayAfterAdd'] as String).input(),
      scaleDownDelayAfterDelete: map['scaleDownDelayAfterDelete'] == null ? null : (map['scaleDownDelayAfterDelete'] as String).input(),
      scaleDownDelayAfterFailure: map['scaleDownDelayAfterFailure'] == null ? null : (map['scaleDownDelayAfterFailure'] as String).input(),
      scaleDownUnneeded: map['scaleDownUnneeded'] == null ? null : (map['scaleDownUnneeded'] as String).input(),
      scaleDownUnready: map['scaleDownUnready'] == null ? null : (map['scaleDownUnready'] as String).input(),
      scaleDownUtilizationThreshold: map['scaleDownUtilizationThreshold'] == null ? null : (map['scaleDownUtilizationThreshold'] as String).input(),
      scanInterval: map['scanInterval'] == null ? null : (map['scanInterval'] as String).input(),
      skipNodesWithLocalStorage: map['skipNodesWithLocalStorage'] == null ? null : (map['skipNodesWithLocalStorage'] as bool).input(),
      skipNodesWithSystemPods: map['skipNodesWithSystemPods'] == null ? null : (map['skipNodesWithSystemPods'] as bool).input(),
    );
  }
}

