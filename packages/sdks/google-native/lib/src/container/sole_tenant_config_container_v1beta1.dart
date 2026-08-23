// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity_container_v1beta1.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfigContainerV1beta1 {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final pulumi.Input<List<NodeAffinityContainerV1beta1>>? nodeAffinities;

  /// Creates a new [SoleTenantConfigContainerV1beta1].
  /// [nodeAffinities] NodeAffinities used to match to a shared sole tenant node group.
  const SoleTenantConfigContainerV1beta1({
    this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<NodeAffinityContainerV1beta1>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<NodeAffinityContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenantConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfigContainerV1beta1(
      nodeAffinities: (() { final guardedValue = map['nodeAffinities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAffinityContainerV1beta1>(guardedValue, (value) => NodeAffinityContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
