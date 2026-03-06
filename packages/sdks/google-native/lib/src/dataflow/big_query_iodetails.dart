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
  const BigQueryIODetails({
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
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

