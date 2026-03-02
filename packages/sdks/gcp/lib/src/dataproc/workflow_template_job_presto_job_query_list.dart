// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateJobPrestoJobQueryList {
  /// Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": } }
  final pulumi.Input<List<String>> queries;

  /// Creates a new [WorkflowTemplateJobPrestoJobQueryList].
  /// [queries] Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": } }
  WorkflowTemplateJobPrestoJobQueryList({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries': queries,
    };
  }

  factory WorkflowTemplateJobPrestoJobQueryList.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobPrestoJobQueryList(
      queries: ((map['queries'] as List).cast<String>()).input(),
    );
  }
}

