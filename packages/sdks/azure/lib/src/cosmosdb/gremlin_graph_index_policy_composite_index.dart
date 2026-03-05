// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_index_policy_composite_index_index.dart';

class GremlinGraphIndexPolicyCompositeIndex {
  /// One or more `index` blocks as defined below.
  final pulumi.Input<List<GremlinGraphIndexPolicyCompositeIndexIndex>> indices;

  /// Creates a new [GremlinGraphIndexPolicyCompositeIndex].
  /// [indices] One or more `index` blocks as defined below.
  GremlinGraphIndexPolicyCompositeIndex({
    required this.indices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indices': pulumi.Input.mapInputValue<List<GremlinGraphIndexPolicyCompositeIndexIndex>, List<Map<String, dynamic>>>(indices, (value) => pulumi.Input.encodeList<GremlinGraphIndexPolicyCompositeIndexIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GremlinGraphIndexPolicyCompositeIndex.fromMap(Map<String, dynamic> map) {
    return GremlinGraphIndexPolicyCompositeIndex(
      indices: pulumi.Input.fromValue(pulumi.Input.decodeList<GremlinGraphIndexPolicyCompositeIndexIndex>(map['indices']!, (value) => GremlinGraphIndexPolicyCompositeIndexIndex.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

