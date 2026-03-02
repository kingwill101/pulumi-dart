// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a BigQuery connector used by the job.
class BigQueryIODetailsResponse {
  /// Dataset accessed in the connection.
  final pulumi.Input<String> dataset;
  /// Project accessed in the connection.
  final pulumi.Input<String> project;
  /// Query used to access data in the connection.
  final pulumi.Input<String> query;
  /// Table accessed in the connection.
  final pulumi.Input<String> table;

  /// Creates a new [BigQueryIODetailsResponse].
  /// [dataset] Dataset accessed in the connection.
  /// [project] Project accessed in the connection.
  /// [query] Query used to access data in the connection.
  /// [table] Table accessed in the connection.
  BigQueryIODetailsResponse({
    required this.dataset,
    required this.project,
    required this.query,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'project': project,
      'query': query,
      'table': table,
    };
  }

  factory BigQueryIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryIODetailsResponse(
      dataset: (map['dataset'] as String).input(),
      project: (map['project'] as String).input(),
      query: (map['query'] as String).input(),
      table: (map['table'] as String).input(),
    );
  }
}

