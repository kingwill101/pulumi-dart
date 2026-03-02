// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_virtual_cluster_config_auxiliary_services_config.dart';
import 'cluster_virtual_cluster_config_kubernetes_cluster_config.dart';

class ClusterVirtualClusterConfig {
  /// Configuration of auxiliary services used by this cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterVirtualClusterConfigAuxiliaryServicesConfig>? auxiliaryServicesConfig;
  /// The configuration for running the Dataproc cluster on Kubernetes.
  /// Structure defined below.
  /// - - -
  final pulumi.Input<ClusterVirtualClusterConfigKubernetesClusterConfig>? kubernetesClusterConfig;
  /// The Cloud Storage staging bucket used to stage files,
  /// such as Hadoop jars, between client machines and the cluster.
  /// Note: If you don't explicitly specify a `staging_bucket`
  /// then GCP will auto create / assign one for you. However, you are not guaranteed
  /// an auto generated bucket which is solely dedicated to your cluster; it may be shared
  /// with other clusters in the same region/zone also choosing to use the auto generation
  /// option.
  final pulumi.Input<String>? stagingBucket;

  /// Creates a new [ClusterVirtualClusterConfig].
  /// [auxiliaryServicesConfig] Configuration of auxiliary services used by this cluster.
  /// [kubernetesClusterConfig] The configuration for running the Dataproc cluster on Kubernetes.
  /// [stagingBucket] The Cloud Storage staging bucket used to stage files,
  ClusterVirtualClusterConfig({
    this.auxiliaryServicesConfig,
    this.kubernetesClusterConfig,
    this.stagingBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryServicesConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfigAuxiliaryServicesConfig, Map<String, dynamic>>(auxiliaryServicesConfig, (value) => value.toMap()),
      'kubernetesClusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfigKubernetesClusterConfig, Map<String, dynamic>>(kubernetesClusterConfig, (value) => value.toMap()),
      'stagingBucket': ?stagingBucket,
    };
  }

  factory ClusterVirtualClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfig(
      auxiliaryServicesConfig: map['auxiliaryServicesConfig'] == null ? null : (ClusterVirtualClusterConfigAuxiliaryServicesConfig.fromMap((map['auxiliaryServicesConfig']! as Map).cast<String, dynamic>())).input(),
      kubernetesClusterConfig: map['kubernetesClusterConfig'] == null ? null : (ClusterVirtualClusterConfigKubernetesClusterConfig.fromMap((map['kubernetesClusterConfig']! as Map).cast<String, dynamic>())).input(),
      stagingBucket: map['stagingBucket'] == null ? null : (map['stagingBucket']! as String).input(),
    );
  }
}

