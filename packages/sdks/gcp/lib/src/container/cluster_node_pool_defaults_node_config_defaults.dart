// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config.dart';
import 'cluster_node_pool_defaults_node_config_defaults_gcfs_config.dart';

class ClusterNodePoolDefaultsNodeConfigDefaults {
  /// Parameters for containerd configuration.
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig>? containerdConfig;
  /// The default Google Container Filesystem (GCFS) configuration at the cluster level. e.g. enable [image streaming](https://cloud.google.com/kubernetes-engine/docs/how-to/image-streaming) across all the node pools within the cluster. Structure is documented below.
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig>? gcfsConfig;
  /// Controls whether the kubelet read-only port is enabled for newly created node pools in the cluster. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String>? insecureKubeletReadonlyPortEnabled;
  /// The type of logging agent that is deployed by default for newly created node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  final pulumi.Input<String>? loggingVariant;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaults].
  /// [containerdConfig] Parameters for containerd configuration.
  /// [gcfsConfig] The default Google Container Filesystem (GCFS) configuration at the cluster level. e.g. enable [image streaming](https://cloud.google.com/kubernetes-engine/docs/how-to/image-streaming) across all the node pools within the cluster. Structure is documented below.
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled for newly created node pools in the cluster. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [loggingVariant] The type of logging agent that is deployed by default for newly created node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  ClusterNodePoolDefaultsNodeConfigDefaults({
    this.containerdConfig,
    this.gcfsConfig,
    this.insecureKubeletReadonlyPortEnabled,
    this.loggingVariant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerdConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig, Map<String, dynamic>>(containerdConfig, (value) => value.toMap()),
      'gcfsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'loggingVariant': ?loggingVariant,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaults.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaults(
      containerdConfig: (() { final guardedValue = map['containerdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcfsConfig: (() { final guardedValue = map['gcfsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insecureKubeletReadonlyPortEnabled: (() { final guardedValue = map['insecureKubeletReadonlyPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingVariant: (() { final guardedValue = map['loggingVariant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

