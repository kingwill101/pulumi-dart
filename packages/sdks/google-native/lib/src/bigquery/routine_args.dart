// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument.dart';
import 'remote_function_options.dart';
import 'routine_data_governance_type.dart';
import 'routine_determinism_level.dart';
import 'routine_language.dart';
import 'routine_reference.dart';
import 'routine_routine_type.dart';
import 'routine_security_mode.dart';
import 'spark_options.dart';
import 'standard_sql_data_type.dart';
import 'standard_sql_table_type.dart';

/// {@template pulumi_bigquery_v2_routine_args_doc}
/// The set of arguments for Routine.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_routine_args_doc}
class RoutineArgs {
  /// Optional.
  final pulumi.Input<List<Argument>>? arguments;
  /// Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  final pulumi.Input<RoutineDataGovernanceType>? dataGovernanceType;
  final pulumi.Input<String> datasetId;
  /// The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The definition_body is `return "\n";\n` Note that both \n are replaced with linebreaks.
  final pulumi.Input<String> definitionBody;
  /// Optional. The description of the routine, if defined.
  final pulumi.Input<String>? description;
  /// Optional. The determinism level of the JavaScript UDF, if defined.
  final pulumi.Input<RoutineDeterminismLevel>? determinismLevel;
  /// Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  final pulumi.Input<List<String>>? importedLibraries;
  /// Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
  final pulumi.Input<RoutineLanguage>? language;
  final pulumi.Input<String>? project;
  /// Optional. Remote function specific options.
  final pulumi.Input<RemoteFunctionOptions>? remoteFunctionOptions;
  /// Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
  final pulumi.Input<StandardSqlTableType>? returnTableType;
  /// Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  final pulumi.Input<StandardSqlDataType>? returnType;
  /// Reference describing the ID of this routine.
  final pulumi.Input<RoutineReference> routineReference;
  /// The type of routine.
  final pulumi.Input<RoutineRoutineType> routineType;
  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  final pulumi.Input<RoutineSecurityMode>? securityMode;
  /// Optional. Spark specific options.
  final pulumi.Input<SparkOptions>? sparkOptions;
  /// Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  final pulumi.Input<bool>? strictMode;

  /// Creates a new [RoutineArgs].
  /// [arguments] Optional.
  /// [dataGovernanceType] Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  /// [datasetId] Required.
  /// [definitionBody] The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The definition_body is `return "\n";\n` Note that both \n are replaced with linebreaks.
  /// [description] Optional. The description of the routine, if defined.
  /// [determinismLevel] Optional. The determinism level of the JavaScript UDF, if defined.
  /// [importedLibraries] Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  /// [language] Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
  /// [project] Optional.
  /// [remoteFunctionOptions] Optional. Remote function specific options.
  /// [returnTableType] Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
  /// [returnType] Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  /// [routineReference] Reference describing the ID of this routine.
  /// [routineType] The type of routine.
  /// [securityMode] Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// [sparkOptions] Optional. Spark specific options.
  /// [strictMode] Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  RoutineArgs({
    this.arguments,
    this.dataGovernanceType,
    required this.datasetId,
    required this.definitionBody,
    this.description,
    this.determinismLevel,
    this.importedLibraries,
    this.language,
    this.project,
    this.remoteFunctionOptions,
    this.returnTableType,
    this.returnType,
    required this.routineReference,
    required this.routineType,
    this.securityMode,
    this.sparkOptions,
    this.strictMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<Argument>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<Argument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataGovernanceType': ?pulumi.Input.mapOptionalInputValue<RoutineDataGovernanceType, String>(dataGovernanceType, (value) => value.value),
      'datasetId': datasetId,
      'definitionBody': definitionBody,
      'description': ?description,
      'determinismLevel': ?pulumi.Input.mapOptionalInputValue<RoutineDeterminismLevel, String>(determinismLevel, (value) => value.value),
      'importedLibraries': ?importedLibraries,
      'language': ?pulumi.Input.mapOptionalInputValue<RoutineLanguage, String>(language, (value) => value.value),
      'project': ?project,
      'remoteFunctionOptions': ?pulumi.Input.mapOptionalInputValue<RemoteFunctionOptions, Map<String, dynamic>>(remoteFunctionOptions, (value) => value.toMap()),
      'returnTableType': ?pulumi.Input.mapOptionalInputValue<StandardSqlTableType, Map<String, dynamic>>(returnTableType, (value) => value.toMap()),
      'returnType': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(returnType, (value) => value.toMap()),
      'routineReference': pulumi.Input.mapInputValue<RoutineReference, Map<String, dynamic>>(routineReference, (value) => value.toMap()),
      'routineType': pulumi.Input.mapInputValue<RoutineRoutineType, String>(routineType, (value) => value.value),
      'securityMode': ?pulumi.Input.mapOptionalInputValue<RoutineSecurityMode, String>(securityMode, (value) => value.value),
      'sparkOptions': ?pulumi.Input.mapOptionalInputValue<SparkOptions, Map<String, dynamic>>(sparkOptions, (value) => value.toMap()),
      'strictMode': ?strictMode,
    };
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      arguments: map['arguments'] == null ? null : (pulumi.Input.decodeList<Argument>(map['arguments'], (value) => Argument.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataGovernanceType: map['dataGovernanceType'] == null ? null : (RoutineDataGovernanceType.fromValue(map['dataGovernanceType'] as String)).input(),
      datasetId: (map['datasetId'] as String).input(),
      definitionBody: (map['definitionBody'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      determinismLevel: map['determinismLevel'] == null ? null : (RoutineDeterminismLevel.fromValue(map['determinismLevel'] as String)).input(),
      importedLibraries: map['importedLibraries'] == null ? null : ((map['importedLibraries'] as List).cast<String>()).input(),
      language: map['language'] == null ? null : (RoutineLanguage.fromValue(map['language'] as String)).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      remoteFunctionOptions: map['remoteFunctionOptions'] == null ? null : (RemoteFunctionOptions.fromMap((map['remoteFunctionOptions'] as Map).cast<String, dynamic>())).input(),
      returnTableType: map['returnTableType'] == null ? null : (StandardSqlTableType.fromMap((map['returnTableType'] as Map).cast<String, dynamic>())).input(),
      returnType: map['returnType'] == null ? null : (StandardSqlDataType.fromMap((map['returnType'] as Map).cast<String, dynamic>())).input(),
      routineReference: (RoutineReference.fromMap((map['routineReference'] as Map).cast<String, dynamic>())).input(),
      routineType: (RoutineRoutineType.fromValue(map['routineType'] as String)).input(),
      securityMode: map['securityMode'] == null ? null : (RoutineSecurityMode.fromValue(map['securityMode'] as String)).input(),
      sparkOptions: map['sparkOptions'] == null ? null : (SparkOptions.fromMap((map['sparkOptions'] as Map).cast<String, dynamic>())).input(),
      strictMode: map['strictMode'] == null ? null : (map['strictMode'] as bool).input(),
    );
  }
}

