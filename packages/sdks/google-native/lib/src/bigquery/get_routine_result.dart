// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument_response.dart';
import 'remote_function_options_response.dart';
import 'routine_reference_response.dart';
import 'spark_options_response.dart';
import 'standard_sql_data_type_response.dart';
import 'standard_sql_table_type_response.dart';

/// Result data returned by getRoutine.
class GetRoutineResult {
  /// Optional.
  final List<ArgumentResponse> arguments;
  /// The time when this routine was created, in milliseconds since the epoch.
  final String creationTime;
  /// Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  final String dataGovernanceType;
  /// The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The definition_body is `return "\n";\n` Note that both \n are replaced with linebreaks.
  final String definitionBody;
  /// Optional. The description of the routine, if defined.
  final String description;
  /// Optional. The determinism level of the JavaScript UDF, if defined.
  final String determinismLevel;
  /// A hash of this resource.
  final String etag;
  /// Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  final List<String> importedLibraries;
  /// Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
  final String language;
  /// The time when this routine was last modified, in milliseconds since the epoch.
  final String lastModifiedTime;
  /// Optional. Remote function specific options.
  final RemoteFunctionOptionsResponse remoteFunctionOptions;
  /// Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
  final StandardSqlTableTypeResponse returnTableType;
  /// Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  final StandardSqlDataTypeResponse returnType;
  /// Reference describing the ID of this routine.
  final RoutineReferenceResponse routineReference;
  /// The type of routine.
  final String routineType;
  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  final String securityMode;
  /// Optional. Spark specific options.
  final SparkOptionsResponse sparkOptions;
  /// Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  final bool strictMode;

  /// Creates a new [GetRoutineResult].
  /// [arguments] Optional.
  /// [creationTime] The time when this routine was created, in milliseconds since the epoch.
  /// [dataGovernanceType] Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  /// [definitionBody] The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The definition_body is `return "\n";\n` Note that both \n are replaced with linebreaks.
  /// [description] Optional. The description of the routine, if defined.
  /// [determinismLevel] Optional. The determinism level of the JavaScript UDF, if defined.
  /// [etag] A hash of this resource.
  /// [importedLibraries] Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  /// [language] Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
  /// [lastModifiedTime] The time when this routine was last modified, in milliseconds since the epoch.
  /// [remoteFunctionOptions] Optional. Remote function specific options.
  /// [returnTableType] Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
  /// [returnType] Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  /// [routineReference] Reference describing the ID of this routine.
  /// [routineType] The type of routine.
  /// [securityMode] Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// [sparkOptions] Optional. Spark specific options.
  /// [strictMode] Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  const GetRoutineResult({
    required this.arguments,
    required this.creationTime,
    required this.dataGovernanceType,
    required this.definitionBody,
    required this.description,
    required this.determinismLevel,
    required this.etag,
    required this.importedLibraries,
    required this.language,
    required this.lastModifiedTime,
    required this.remoteFunctionOptions,
    required this.returnTableType,
    required this.returnType,
    required this.routineReference,
    required this.routineType,
    required this.securityMode,
    required this.sparkOptions,
    required this.strictMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': pulumi.Input.encodeList<ArgumentResponse, Map<String, dynamic>>(arguments, (value) => value.toMap()),
      'creationTime': creationTime,
      'dataGovernanceType': dataGovernanceType,
      'definitionBody': definitionBody,
      'description': description,
      'determinismLevel': determinismLevel,
      'etag': etag,
      'importedLibraries': importedLibraries,
      'language': language,
      'lastModifiedTime': lastModifiedTime,
      'remoteFunctionOptions': remoteFunctionOptions.toMap(),
      'returnTableType': returnTableType.toMap(),
      'returnType': returnType.toMap(),
      'routineReference': routineReference.toMap(),
      'routineType': routineType,
      'securityMode': securityMode,
      'sparkOptions': sparkOptions.toMap(),
      'strictMode': strictMode,
    };
  }

  factory GetRoutineResult.fromMap(Map<String, dynamic> map) {
    return GetRoutineResult(
      arguments: pulumi.Input.decodeList<ArgumentResponse>(map['arguments']!, (value) => ArgumentResponse.fromMap((value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as String,
      dataGovernanceType: map['dataGovernanceType'] as String,
      definitionBody: map['definitionBody'] as String,
      description: map['description'] as String,
      determinismLevel: map['determinismLevel'] as String,
      etag: map['etag'] as String,
      importedLibraries: (map['importedLibraries'] as List).cast<String>(),
      language: map['language'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      remoteFunctionOptions: RemoteFunctionOptionsResponse.fromMap((map['remoteFunctionOptions']! as Map).cast<String, dynamic>()),
      returnTableType: StandardSqlTableTypeResponse.fromMap((map['returnTableType']! as Map).cast<String, dynamic>()),
      returnType: StandardSqlDataTypeResponse.fromMap((map['returnType']! as Map).cast<String, dynamic>()),
      routineReference: RoutineReferenceResponse.fromMap((map['routineReference']! as Map).cast<String, dynamic>()),
      routineType: map['routineType'] as String,
      securityMode: map['securityMode'] as String,
      sparkOptions: SparkOptionsResponse.fromMap((map['sparkOptions']! as Map).cast<String, dynamic>()),
      strictMode: map['strictMode'] as bool,
    );
  }
}

