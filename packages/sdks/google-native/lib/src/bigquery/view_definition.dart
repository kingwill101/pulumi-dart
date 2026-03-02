// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_defined_function_resource.dart';

class ViewDefinition {
  /// [Required] A query that BigQuery executes when the view is referenced.
  final pulumi.Input<String>? query;
  /// True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set using BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/
  final pulumi.Input<bool>? useExplicitColumnNames;
  /// Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value.
  final pulumi.Input<bool>? useLegacySql;
  /// Describes user-defined function resources used in the query.
  final pulumi.Input<List<UserDefinedFunctionResource>>? userDefinedFunctionResources;

  /// Creates a new [ViewDefinition].
  /// [query] [Required] A query that BigQuery executes when the view is referenced.
  /// [useExplicitColumnNames] True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set using BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value.
  /// [userDefinedFunctionResources] Describes user-defined function resources used in the query.
  ViewDefinition({
    this.query,
    this.useExplicitColumnNames,
    this.useLegacySql,
    this.userDefinedFunctionResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': ?query,
      'useExplicitColumnNames': ?useExplicitColumnNames,
      'useLegacySql': ?useLegacySql,
      'userDefinedFunctionResources': ?pulumi.Input.mapOptionalInputValue<List<UserDefinedFunctionResource>, List<Map<String, dynamic>>>(userDefinedFunctionResources, (value) => pulumi.Input.encodeList<UserDefinedFunctionResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ViewDefinition.fromMap(Map<String, dynamic> map) {
    return ViewDefinition(
      query: map['query'] == null ? null : (map['query']! as String).input(),
      useExplicitColumnNames: map['useExplicitColumnNames'] == null ? null : (map['useExplicitColumnNames']! as bool).input(),
      useLegacySql: map['useLegacySql'] == null ? null : (map['useLegacySql']! as bool).input(),
      userDefinedFunctionResources: map['userDefinedFunctionResources'] == null ? null : (pulumi.Input.decodeList<UserDefinedFunctionResource>(map['userDefinedFunctionResources']!, (value) => UserDefinedFunctionResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

