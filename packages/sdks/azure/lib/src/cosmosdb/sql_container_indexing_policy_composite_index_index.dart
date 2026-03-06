// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlContainerIndexingPolicyCompositeIndexIndex {
  /// Order of the index. Possible values are `Ascending` or `Descending`.
  final pulumi.Input<String> order;
  /// Path for which the indexing behaviour applies to.
  final pulumi.Input<String> path;

  /// Creates a new [SqlContainerIndexingPolicyCompositeIndexIndex].
  /// [order] Order of the index. Possible values are `Ascending` or `Descending`.
  /// [path] Path for which the indexing behaviour applies to.
  const SqlContainerIndexingPolicyCompositeIndexIndex({
    required this.order,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order,
      'path': path,
    };
  }

  factory SqlContainerIndexingPolicyCompositeIndexIndex.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicyCompositeIndexIndex(
      order: pulumi.Input.fromValue(map['order'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

