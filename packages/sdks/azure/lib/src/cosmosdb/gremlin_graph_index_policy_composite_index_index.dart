// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GremlinGraphIndexPolicyCompositeIndexIndex {
  /// Order of the index. Possible values are `Ascending` or `Descending`.
  final pulumi.Input<String> order;
  /// Path for which the indexing behaviour applies to.
  final pulumi.Input<String> path;

  /// Creates a new [GremlinGraphIndexPolicyCompositeIndexIndex].
  /// [order] Order of the index. Possible values are `Ascending` or `Descending`.
  /// [path] Path for which the indexing behaviour applies to.
  const GremlinGraphIndexPolicyCompositeIndexIndex({
    required this.order,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order,
      'path': path,
    };
  }

  factory GremlinGraphIndexPolicyCompositeIndexIndex.fromMap(Map<String, dynamic> map) {
    return GremlinGraphIndexPolicyCompositeIndexIndex(
      order: pulumi.Input.fromValue(map['order'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
