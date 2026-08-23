// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateJobSparkSqlJobQueryList {
  /// Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": } }
  final pulumi.Input<List<String>> queries;

  /// Creates a new [WorkflowTemplateJobSparkSqlJobQueryList].
  /// [queries] Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: "hiveJob": { "queryList": { "queries": } }
  const WorkflowTemplateJobSparkSqlJobQueryList({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries': queries,
    };
  }

  factory WorkflowTemplateJobSparkSqlJobQueryList.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkSqlJobQueryList(
      queries: pulumi.Input.fromValue((map['queries'] as List).cast<String>()),
    );
  }
}
