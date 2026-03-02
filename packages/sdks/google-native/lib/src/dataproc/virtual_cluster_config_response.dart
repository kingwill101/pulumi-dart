// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auxiliary_services_config_response.dart';
import 'kubernetes_cluster_config_response.dart';

/// The Dataproc cluster config for a cluster that does not directly control the underlying compute resources, such as a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview).
class VirtualClusterConfigResponse {
  /// Optional. Configuration of auxiliary services used by this cluster.
  final pulumi.Input<AuxiliaryServicesConfigResponse> auxiliaryServicesConfig;
  /// The configuration for running the Dataproc cluster on Kubernetes.
  final pulumi.Input<KubernetesClusterConfigResponse> kubernetesClusterConfig;
  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String> stagingBucket;

  /// Creates a new [VirtualClusterConfigResponse].
  /// [auxiliaryServicesConfig] Optional. Configuration of auxiliary services used by this cluster.
  /// [kubernetesClusterConfig] The configuration for running the Dataproc cluster on Kubernetes.
  /// [stagingBucket] Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  VirtualClusterConfigResponse({
    required this.auxiliaryServicesConfig,
    required this.kubernetesClusterConfig,
    required this.stagingBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryServicesConfig': pulumi.Input.mapInputValue<AuxiliaryServicesConfigResponse, Map<String, dynamic>>(auxiliaryServicesConfig, (value) => value.toMap()),
      'kubernetesClusterConfig': pulumi.Input.mapInputValue<KubernetesClusterConfigResponse, Map<String, dynamic>>(kubernetesClusterConfig, (value) => value.toMap()),
      'stagingBucket': stagingBucket,
    };
  }

  factory VirtualClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualClusterConfigResponse(
      auxiliaryServicesConfig: (AuxiliaryServicesConfigResponse.fromMap((map['auxiliaryServicesConfig'] as Map).cast<String, dynamic>())).input(),
      kubernetesClusterConfig: (KubernetesClusterConfigResponse.fromMap((map['kubernetesClusterConfig'] as Map).cast<String, dynamic>())).input(),
      stagingBucket: (map['stagingBucket'] as String).input(),
    );
  }
}

