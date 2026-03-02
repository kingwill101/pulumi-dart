// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a BigQuery connector used by the job.
class BigQueryIODetails {
  /// Dataset accessed in the connection.
  final pulumi.Input<String>? dataset;
  /// Project accessed in the connection.
  final pulumi.Input<String>? project;
  /// Query used to access data in the connection.
  final pulumi.Input<String>? query;
  /// Table accessed in the connection.
  final pulumi.Input<String>? table;

  /// Creates a new [BigQueryIODetails].
  /// [dataset] Dataset accessed in the connection.
  /// [project] Project accessed in the connection.
  /// [query] Query used to access data in the connection.
  /// [table] Table accessed in the connection.
  BigQueryIODetails({
    this.dataset,
    this.project,
    this.query,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'project': ?project,
      'query': ?query,
      'table': ?table,
    };
  }

  factory BigQueryIODetails.fromMap(Map<String, dynamic> map) {
    return BigQueryIODetails(
      dataset: map['dataset'] == null ? null : (map['dataset']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
      table: map['table'] == null ? null : (map['table']! as String).input(),
    );
  }
}

