// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_indexing_policy_composite_index_index.dart';

class SqlContainerIndexingPolicyCompositeIndex {
  /// One or more `index` blocks as defined below.
  final pulumi.Input<List<SqlContainerIndexingPolicyCompositeIndexIndex>> indices;

  /// Creates a new [SqlContainerIndexingPolicyCompositeIndex].
  /// [indices] One or more `index` blocks as defined below.
  const SqlContainerIndexingPolicyCompositeIndex({
    required this.indices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indices': pulumi.Input.mapInputValue<List<SqlContainerIndexingPolicyCompositeIndexIndex>, List<Map<String, dynamic>>>(indices, (value) => pulumi.Input.encodeList<SqlContainerIndexingPolicyCompositeIndexIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlContainerIndexingPolicyCompositeIndex.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicyCompositeIndex(
      indices: pulumi.Input.fromValue(pulumi.Input.decodeList<SqlContainerIndexingPolicyCompositeIndexIndex>(map['indices']!, (value) => SqlContainerIndexingPolicyCompositeIndexIndex.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
