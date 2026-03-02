// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_sole_tenant_config_node_affinity.dart';

class ClusterNodeConfigSoleTenantConfig {
  /// Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feeature is disabled. The value should be greater than or equal to half of the machine type's CPU count.
  final pulumi.Input<int>? minNodeCpus;
  /// The node affinity settings for the sole tenant node pool. Structure is documented below.
  final pulumi.Input<List<ClusterNodeConfigSoleTenantConfigNodeAffinity>> nodeAffinities;

  /// Creates a new [ClusterNodeConfigSoleTenantConfig].
  /// [minNodeCpus] Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feeature is disabled. The value should be greater than or equal to half of the machine type's CPU count.
  /// [nodeAffinities] The node affinity settings for the sole tenant node pool. Structure is documented below.
  ClusterNodeConfigSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<ClusterNodeConfigSoleTenantConfigNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<ClusterNodeConfigSoleTenantConfigNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterNodeConfigSoleTenantConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigSoleTenantConfig(
      minNodeCpus: map['minNodeCpus'] == null ? null : (map['minNodeCpus'] as int).input(),
      nodeAffinities: (pulumi.Input.decodeList<ClusterNodeConfigSoleTenantConfigNodeAffinity>(map['nodeAffinities'], (value) => ClusterNodeConfigSoleTenantConfigNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

