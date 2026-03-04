// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A list of queries to run on a cluster.
class QueryListResponseDataprocV1beta2 {
  /// The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }
  final pulumi.Input<List<String>> queries;

  /// Creates a new [QueryListResponseDataprocV1beta2].
  /// [queries] The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": [ "query1", "query2", "query3;query4", ] } }
  QueryListResponseDataprocV1beta2({required this.queries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'queries': queries};
  }

  factory QueryListResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return QueryListResponseDataprocV1beta2(
      queries: pulumi.Input.fromValue((map['queries'] as List).cast<String>()),
    );
  }
}
