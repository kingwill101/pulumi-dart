// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_sole_tenant_config_node_affinity.dart';

class ClusterNodePoolNodeConfigSoleTenantConfig {
  /// Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feeature is disabled. The value should be greater than or equal to half of the machine type's CPU count.
  final pulumi.Input<int?>? minNodeCpus;
  /// The node affinity settings for the sole tenant node pool. Structure is documented below.
  final pulumi.Input<List<ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity>> nodeAffinities;

  /// Creates a new [ClusterNodePoolNodeConfigSoleTenantConfig].
  /// [minNodeCpus] Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feeature is disabled. The value should be greater than or equal to half of the machine type's CPU count.
  /// [nodeAffinities] The node affinity settings for the sole tenant node pool. Structure is documented below.
  const ClusterNodePoolNodeConfigSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterNodePoolNodeConfigSoleTenantConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigSoleTenantConfig(
      minNodeCpus: (() { final guardedValue = map['minNodeCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodeAffinities: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity>(map['nodeAffinities']!, (value) => ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
