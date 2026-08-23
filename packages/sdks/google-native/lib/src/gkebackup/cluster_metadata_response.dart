// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the GKE cluster from which this Backup was created.
class ClusterMetadataResponse {
  /// Anthos version
  final pulumi.Input<String> anthosVersion;
  /// A list of the Backup for GKE CRD versions found in the cluster.
  final pulumi.Input<Map<String, String>> backupCrdVersions;
  /// The source cluster from which this Backup was created. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` This is inherited from the parent BackupPlan's cluster field.
  final pulumi.Input<String> cluster;
  /// GKE version
  final pulumi.Input<String> gkeVersion;
  /// The Kubernetes server version of the source cluster.
  final pulumi.Input<String> k8sVersion;

  /// Creates a new [ClusterMetadataResponse].
  /// [anthosVersion] Anthos version
  /// [backupCrdVersions] A list of the Backup for GKE CRD versions found in the cluster.
  /// [cluster] The source cluster from which this Backup was created. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` This is inherited from the parent BackupPlan's cluster field.
  /// [gkeVersion] GKE version
  /// [k8sVersion] The Kubernetes server version of the source cluster.
  const ClusterMetadataResponse({
    required this.anthosVersion,
    required this.backupCrdVersions,
    required this.cluster,
    required this.gkeVersion,
    required this.k8sVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosVersion': anthosVersion,
      'backupCrdVersions': backupCrdVersions,
      'cluster': cluster,
      'gkeVersion': gkeVersion,
      'k8sVersion': k8sVersion,
    };
  }

  factory ClusterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ClusterMetadataResponse(
      anthosVersion: pulumi.Input.fromValue(map['anthosVersion'] as String),
      backupCrdVersions: pulumi.Input.fromValue((map['backupCrdVersions'] as Map).cast<String, String>()),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      gkeVersion: pulumi.Input.fromValue(map['gkeVersion'] as String),
      k8sVersion: pulumi.Input.fromValue(map['k8sVersion'] as String),
    );
  }
}
