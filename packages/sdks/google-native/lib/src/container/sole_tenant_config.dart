// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfig {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final pulumi.Input<List<NodeAffinity>>? nodeAffinities;

  /// Creates a new [SoleTenantConfig].
  /// [nodeAffinities] NodeAffinities used to match to a shared sole tenant node group.
  SoleTenantConfig({
    this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<NodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<NodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenantConfig.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfig(
      nodeAffinities: map['nodeAffinities'] == null ? null : (pulumi.Input.decodeList<NodeAffinity>(map['nodeAffinities'], (value) => NodeAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

