// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_defined_function_resource_response.dart';

class ViewDefinitionResponse {
  /// [Required] A query that BigQuery executes when the view is referenced.
  final pulumi.Input<String> query;
  /// True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set using BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/
  final pulumi.Input<bool> useExplicitColumnNames;
  /// Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value.
  final pulumi.Input<bool> useLegacySql;
  /// Describes user-defined function resources used in the query.
  final pulumi.Input<List<UserDefinedFunctionResourceResponse>> userDefinedFunctionResources;

  /// Creates a new [ViewDefinitionResponse].
  /// [query] [Required] A query that BigQuery executes when the view is referenced.
  /// [useExplicitColumnNames] True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set using BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value.
  /// [userDefinedFunctionResources] Describes user-defined function resources used in the query.
  ViewDefinitionResponse({
    required this.query,
    required this.useExplicitColumnNames,
    required this.useLegacySql,
    required this.userDefinedFunctionResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'useExplicitColumnNames': useExplicitColumnNames,
      'useLegacySql': useLegacySql,
      'userDefinedFunctionResources': pulumi.Input.mapInputValue<List<UserDefinedFunctionResourceResponse>, List<Map<String, dynamic>>>(userDefinedFunctionResources, (value) => pulumi.Input.encodeList<UserDefinedFunctionResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ViewDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ViewDefinitionResponse(
      query: pulumi.Input.fromValue(map['query'] as String),
      useExplicitColumnNames: pulumi.Input.fromValue(map['useExplicitColumnNames'] as bool),
      useLegacySql: pulumi.Input.fromValue(map['useLegacySql'] as bool),
      userDefinedFunctionResources: pulumi.Input.fromValue(pulumi.Input.decodeList<UserDefinedFunctionResourceResponse>(map['userDefinedFunctionResources']!, (value) => UserDefinedFunctionResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

