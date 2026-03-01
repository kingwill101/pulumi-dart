import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument_response.dart';
import 'remote_function_options_response.dart';
import 'routine_args.dart';
import 'routine_reference_response.dart';
import 'spark_options_response.dart';
import 'standard_sql_data_type_response.dart';
import 'standard_sql_table_type_response.dart';

/// Creates a new routine in the dataset.
/// Auto-naming is currently not supported for this resource.
class Routine extends pulumi.CustomResource {
  /// Optional.
  late final pulumi.Output<List<ArgumentResponse>> arguments;
  /// The time when this routine was created, in milliseconds since the epoch.
  late final pulumi.Output<String> creationTime;
  /// Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  late final pulumi.Output<String> dataGovernanceType;
  late final pulumi.Output<String> datasetId;
  /// The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The definition_body is `return "\n";\n` Note that both \n are replaced with linebreaks.
  late final pulumi.Output<String> definitionBody;
  /// Optional. The description of the routine, if defined.
  late final pulumi.Output<String> description;
  /// Optional. The determinism level of the JavaScript UDF, if defined.
  late final pulumi.Output<String> determinismLevel;
  /// A hash of this resource.
  late final pulumi.Output<String> etag;
  /// Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  late final pulumi.Output<List<String>> importedLibraries;
  /// Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
  late final pulumi.Output<String> language;
  /// The time when this routine was last modified, in milliseconds since the epoch.
  late final pulumi.Output<String> lastModifiedTime;
  late final pulumi.Output<String> project;
  /// Optional. Remote function specific options.
  late final pulumi.Output<RemoteFunctionOptionsResponse> remoteFunctionOptions;
  /// Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
  late final pulumi.Output<StandardSqlTableTypeResponse> returnTableType;
  /// Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  late final pulumi.Output<StandardSqlDataTypeResponse> returnType;
  /// Reference describing the ID of this routine.
  late final pulumi.Output<RoutineReferenceResponse> routineReference;
  /// The type of routine.
  late final pulumi.Output<String> routineType;
  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  late final pulumi.Output<String> securityMode;
  /// Optional. Spark specific options.
  late final pulumi.Output<SparkOptionsResponse> sparkOptions;
  /// Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  late final pulumi.Output<bool> strictMode;

  /// Creates a new [Routine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Routine]. {@macro pulumi_bigquery_v2_routine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Routine(
    String name, {
    RoutineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:bigquery/v2:Routine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arguments = registerOutput<List<ArgumentResponse>>('arguments');
    this.creationTime = registerOutput<String>('creationTime');
    this.dataGovernanceType = registerOutput<String>('dataGovernanceType');
    this.datasetId = registerOutput<String>('datasetId');
    this.definitionBody = registerOutput<String>('definitionBody');
    this.description = registerOutput<String>('description');
    this.determinismLevel = registerOutput<String>('determinismLevel');
    this.etag = registerOutput<String>('etag');
    this.importedLibraries = registerOutput<List<String>>('importedLibraries');
    this.language = registerOutput<String>('language');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.project = registerOutput<String>('project');
    this.remoteFunctionOptions = registerOutput<RemoteFunctionOptionsResponse>('remoteFunctionOptions');
    this.returnTableType = registerOutput<StandardSqlTableTypeResponse>('returnTableType');
    this.returnType = registerOutput<StandardSqlDataTypeResponse>('returnType');
    this.routineReference = registerOutput<RoutineReferenceResponse>('routineReference');
    this.routineType = registerOutput<String>('routineType');
    this.securityMode = registerOutput<String>('securityMode');
    this.sparkOptions = registerOutput<SparkOptionsResponse>('sparkOptions');
    this.strictMode = registerOutput<bool>('strictMode');
  }
}
