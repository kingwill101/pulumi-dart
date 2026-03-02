// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadEntitySearchQuery {
  /// A valid entity search query; empty, and null values are considered invalid.
  final pulumi.Input<String> query;

  /// Creates a new [WorkloadEntitySearchQuery].
  /// [query] A valid entity search query; empty, and null values are considered invalid.
  WorkloadEntitySearchQuery({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory WorkloadEntitySearchQuery.fromMap(Map<String, dynamic> map) {
    return WorkloadEntitySearchQuery(
      query: (map['query'] as String).input(),
    );
  }
}

