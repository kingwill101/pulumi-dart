// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_sole_tenant_config_node_affinity.dart';

class NodePoolNodeConfigSoleTenantConfig {
  /// Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feature is disabled.
  final pulumi.Input<int>? minNodeCpus;
  /// .
  final pulumi.Input<List<NodePoolNodeConfigSoleTenantConfigNodeAffinity>> nodeAffinities;

  /// Creates a new [NodePoolNodeConfigSoleTenantConfig].
  /// [minNodeCpus] Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feature is disabled.
  /// [nodeAffinities] .
  NodePoolNodeConfigSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<NodePoolNodeConfigSoleTenantConfigNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<NodePoolNodeConfigSoleTenantConfigNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodePoolNodeConfigSoleTenantConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigSoleTenantConfig(
      minNodeCpus: map['minNodeCpus'] == null ? null : (map['minNodeCpus'] as int).input(),
      nodeAffinities: (pulumi.Input.decodeList<NodePoolNodeConfigSoleTenantConfigNodeAffinity>(map['nodeAffinities'], (value) => NodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

