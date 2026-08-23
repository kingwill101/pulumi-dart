// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auxiliary_services_config.dart';
import 'kubernetes_cluster_config.dart';

/// The Dataproc cluster config for a cluster that does not directly control the underlying compute resources, such as a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).
class VirtualClusterConfig {
  /// Optional. Configuration of auxiliary services used by this cluster.
  final pulumi.Input<AuxiliaryServicesConfig>? auxiliaryServicesConfig;
  /// The configuration for running the Dataproc cluster on Kubernetes.
  final pulumi.Input<KubernetesClusterConfig> kubernetesClusterConfig;
  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String>? stagingBucket;

  /// Creates a new [VirtualClusterConfig].
  /// [auxiliaryServicesConfig] Optional. Configuration of auxiliary services used by this cluster.
  /// [kubernetesClusterConfig] The configuration for running the Dataproc cluster on Kubernetes.
  /// [stagingBucket] Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  const VirtualClusterConfig({
    this.auxiliaryServicesConfig,
    required this.kubernetesClusterConfig,
    this.stagingBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryServicesConfig': ?pulumi.Input.mapOptionalInputValue<AuxiliaryServicesConfig, Map<String, dynamic>>(auxiliaryServicesConfig, (value) => value.toMap()),
      'kubernetesClusterConfig': pulumi.Input.mapInputValue<KubernetesClusterConfig, Map<String, dynamic>>(kubernetesClusterConfig, (value) => value.toMap()),
      'stagingBucket': ?stagingBucket,
    };
  }

  factory VirtualClusterConfig.fromMap(Map<String, dynamic> map) {
    return VirtualClusterConfig(
      auxiliaryServicesConfig: (() { final guardedValue = map['auxiliaryServicesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuxiliaryServicesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesClusterConfig: pulumi.Input.fromValue(KubernetesClusterConfig.fromMap((map['kubernetesClusterConfig']! as Map).cast<String, dynamic>())),
      stagingBucket: (() { final guardedValue = map['stagingBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
