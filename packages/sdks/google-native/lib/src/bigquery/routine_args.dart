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
  const RoutineArgs({
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
      'dataGovernanceType': ?pulumi.Input.mapOptionalInputValue<RoutineDataGovernanceType, String>(dataGovernanceType, (value) => value.wireValue),
      'datasetId': datasetId,
      'definitionBody': definitionBody,
      'description': ?description,
      'determinismLevel': ?pulumi.Input.mapOptionalInputValue<RoutineDeterminismLevel, String>(determinismLevel, (value) => value.wireValue),
      'importedLibraries': ?importedLibraries,
      'language': ?pulumi.Input.mapOptionalInputValue<RoutineLanguage, String>(language, (value) => value.wireValue),
      'project': ?project,
      'remoteFunctionOptions': ?pulumi.Input.mapOptionalInputValue<RemoteFunctionOptions, Map<String, dynamic>>(remoteFunctionOptions, (value) => value.toMap()),
      'returnTableType': ?pulumi.Input.mapOptionalInputValue<StandardSqlTableType, Map<String, dynamic>>(returnTableType, (value) => value.toMap()),
      'returnType': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(returnType, (value) => value.toMap()),
      'routineReference': pulumi.Input.mapInputValue<RoutineReference, Map<String, dynamic>>(routineReference, (value) => value.toMap()),
      'routineType': pulumi.Input.mapInputValue<RoutineRoutineType, String>(routineType, (value) => value.wireValue),
      'securityMode': ?pulumi.Input.mapOptionalInputValue<RoutineSecurityMode, String>(securityMode, (value) => value.wireValue),
      'sparkOptions': ?pulumi.Input.mapOptionalInputValue<SparkOptions, Map<String, dynamic>>(sparkOptions, (value) => value.toMap()),
      'strictMode': ?strictMode,
    };
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Argument>(guardedValue, (value) => Argument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataGovernanceType: (() { final guardedValue = map['dataGovernanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineDataGovernanceType.fromValue(guardedValue as String)); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      definitionBody: pulumi.Input.fromValue(map['definitionBody'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      determinismLevel: (() { final guardedValue = map['determinismLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineDeterminismLevel.fromValue(guardedValue as String)); })(),
      importedLibraries: (() { final guardedValue = map['importedLibraries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineLanguage.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteFunctionOptions: (() { final guardedValue = map['remoteFunctionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemoteFunctionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnTableType: (() { final guardedValue = map['returnTableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardSqlTableType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnType: (() { final guardedValue = map['returnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardSqlDataType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routineReference: pulumi.Input.fromValue(RoutineReference.fromMap((map['routineReference']! as Map).cast<String, dynamic>())),
      routineType: pulumi.Input.fromValue(RoutineRoutineType.fromValue(map['routineType']! as String)),
      securityMode: (() { final guardedValue = map['securityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineSecurityMode.fromValue(guardedValue as String)); })(),
      sparkOptions: (() { final guardedValue = map['sparkOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      strictMode: (() { final guardedValue = map['strictMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
