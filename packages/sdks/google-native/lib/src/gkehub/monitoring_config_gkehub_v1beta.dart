// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MonitoringConfig informs Fleet-based applications/services/UIs how the metrics for the underlying cluster is reported to cloud monitoring services. It can be set from empty to non-empty, but can't be mutated directly to prevent accidentally breaking the constinousty of metrics.
class MonitoringConfigGkehubV1beta {
  /// Optional. Cluster name used to report metrics. For Anthos on VMWare/Baremetal/MultiCloud clusters, it would be in format {cluster_type}/{cluster_name}, e.g., "awsClusters/cluster_1".
  final pulumi.Input<String>? cluster;

  /// Optional. For GKE and Multicloud clusters, this is the UUID of the cluster resource. For VMWare and Baremetal clusters, this is the kube-system UID.
  final pulumi.Input<String>? clusterHash;

  /// Optional. Kubernetes system metrics, if available, are written to this prefix. This defaults to kubernetes.io for GKE, and kubernetes.io/anthos for Anthos eventually. Noted: Anthos MultiCloud will have kubernetes.io prefix today but will migration to be under kubernetes.io/anthos.
  final pulumi.Input<String>? kubernetesMetricsPrefix;

  /// Optional. Location used to report Metrics
  final pulumi.Input<String>? location;

  /// Optional. Project used to report Metrics
  final pulumi.Input<String>? project;

  /// Creates a new [MonitoringConfigGkehubV1beta].
  /// [cluster] Optional. Cluster name used to report metrics. For Anthos on VMWare/Baremetal/MultiCloud clusters, it would be in format {cluster_type}/{cluster_name}, e.g., "awsClusters/cluster_1".
  /// [clusterHash] Optional. For GKE and Multicloud clusters, this is the UUID of the cluster resource. For VMWare and Baremetal clusters, this is the kube-system UID.
  /// [kubernetesMetricsPrefix] Optional. Kubernetes system metrics, if available, are written to this prefix. This defaults to kubernetes.io for GKE, and kubernetes.io/anthos for Anthos eventually. Noted: Anthos MultiCloud will have kubernetes.io prefix today but will migration to be under kubernetes.io/anthos.
  /// [location] Optional. Location used to report Metrics
  /// [project] Optional. Project used to report Metrics
  MonitoringConfigGkehubV1beta({
    this.cluster,
    this.clusterHash,
    this.kubernetesMetricsPrefix,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'clusterHash': ?clusterHash,
      'kubernetesMetricsPrefix': ?kubernetesMetricsPrefix,
      'location': ?location,
      'project': ?project,
    };
  }

  factory MonitoringConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigGkehubV1beta(
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterHash: (() {
        final guardedValue = map['clusterHash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubernetesMetricsPrefix: (() {
        final guardedValue = map['kubernetesMetricsPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
