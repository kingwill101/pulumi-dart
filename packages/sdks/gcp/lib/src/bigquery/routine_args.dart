// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_argument.dart';
import 'routine_external_runtime_options.dart';
import 'routine_python_options.dart';
import 'routine_remote_function_options.dart';
import 'routine_spark_options.dart';

/// {@template pulumi_bigquery_routine_routine_args_doc}
/// The set of arguments for Routine.
/// {@endtemplate}
/// {@macro pulumi_bigquery_routine_routine_args_doc}
class RoutineArgs {
  /// Input/output argument of a function or a stored procedure.
  /// Structure is documented below.
  final pulumi.Input<List<RoutineArgument>>? arguments;
  /// If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// Possible values are: `DATA_MASKING`.
  final pulumi.Input<String>? dataGovernanceType;
  /// The ID of the dataset containing this routine
  final pulumi.Input<String> datasetId;
  /// The body of the routine. For functions, this is the expression in the AS clause.
  /// If language=SQL, it is the substring inside (but excluding) the parentheses.
  final pulumi.Input<String> definitionBody;
  /// The description of the routine if defined.
  final pulumi.Input<String>? description;
  /// The determinism level of the JavaScript UDF if defined.
  /// Possible values are: `DETERMINISM_LEVEL_UNSPECIFIED`, `DETERMINISTIC`, `NOT_DETERMINISTIC`.
  final pulumi.Input<String>? determinismLevel;
  /// Options for the runtime of the external system.
  /// This field is only applicable for Python UDFs.
  /// Structure is documented below.
  final pulumi.Input<RoutineExternalRuntimeOptions>? externalRuntimeOptions;
  /// Optional. If language = "JAVASCRIPT", this field stores the path of the
  /// imported JAVASCRIPT libraries.
  final pulumi.Input<List<String>>? importedLibraries;
  /// The language of the routine.
  /// Possible values are: `SQL`, `JAVASCRIPT`, `PYTHON`, `JAVA`, `SCALA`.
  final pulumi.Input<String>? language;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Options for a user-defined Python function.
  /// Structure is documented below.
  final pulumi.Input<RoutinePythonOptions>? pythonOptions;
  /// Remote function specific options.
  /// Structure is documented below.
  final pulumi.Input<RoutineRemoteFunctionOptions>? remoteFunctionOptions;
  /// Optional. Can be set only if routineType = "TABLE_VALUED_FUNCTION".
  /// If absent, the return table type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the columns in the evaluated table result will
  /// be cast to match the column types specificed in return table type, at query time.
  final pulumi.Input<String>? returnTableType;
  /// A JSON schema for the return type. Optional if language = "SQL"; required otherwise.
  /// If absent, the return type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the evaluated result will be cast to
  /// the specified returned type at query time. ~>**NOTE**: Because this field expects a JSON
  /// string, any changes to the string will create a diff, even if the JSON itself hasn't
  /// changed. If the API returns a different value for the same schema, e.g. it switche
  /// d the order of values or replaced STRUCT field type with RECORD field type, we currently
  /// cannot suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  final pulumi.Input<String>? returnType;
  /// The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final pulumi.Input<String> routineId;
  /// The type of routine.
  /// Possible values are: `SCALAR_FUNCTION`, `PROCEDURE`, `TABLE_VALUED_FUNCTION`.
  final pulumi.Input<String> routineType;
  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// Possible values are: `DEFINER`, `INVOKER`.
  final pulumi.Input<String>? securityMode;
  /// Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  /// Structure is documented below.
  final pulumi.Input<RoutineSparkOptions>? sparkOptions;

  /// Creates a new [RoutineArgs].
  /// [arguments] Input/output argument of a function or a stored procedure.
  /// [dataGovernanceType] If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// [datasetId] The ID of the dataset containing this routine
  /// [definitionBody] The body of the routine. For functions, this is the expression in the AS clause.
  /// [description] The description of the routine if defined.
  /// [determinismLevel] The determinism level of the JavaScript UDF if defined.
  /// [externalRuntimeOptions] Options for the runtime of the external system.
  /// [importedLibraries] Optional. If language = "JAVASCRIPT", this field stores the path of the
  /// [language] The language of the routine.
  /// [project] The ID of the project in which the resource belongs.
  /// [pythonOptions] Options for a user-defined Python function.
  /// [remoteFunctionOptions] Remote function specific options.
  /// [returnTableType] Optional. Can be set only if routineType = "TABLE_VALUED_FUNCTION".
  /// [returnType] A JSON schema for the return type. Optional if language = "SQL"; required otherwise.
  /// [routineId] The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  /// [routineType] The type of routine.
  /// [securityMode] Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// [sparkOptions] Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  RoutineArgs({
    this.arguments,
    this.dataGovernanceType,
    required this.datasetId,
    required this.definitionBody,
    this.description,
    this.determinismLevel,
    this.externalRuntimeOptions,
    this.importedLibraries,
    this.language,
    this.project,
    this.pythonOptions,
    this.remoteFunctionOptions,
    this.returnTableType,
    this.returnType,
    required this.routineId,
    required this.routineType,
    this.securityMode,
    this.sparkOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<RoutineArgument>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<RoutineArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataGovernanceType': ?dataGovernanceType,
      'datasetId': datasetId,
      'definitionBody': definitionBody,
      'description': ?description,
      'determinismLevel': ?determinismLevel,
      'externalRuntimeOptions': ?pulumi.Input.mapOptionalInputValue<RoutineExternalRuntimeOptions, Map<String, dynamic>>(externalRuntimeOptions, (value) => value.toMap()),
      'importedLibraries': ?importedLibraries,
      'language': ?language,
      'project': ?project,
      'pythonOptions': ?pulumi.Input.mapOptionalInputValue<RoutinePythonOptions, Map<String, dynamic>>(pythonOptions, (value) => value.toMap()),
      'remoteFunctionOptions': ?pulumi.Input.mapOptionalInputValue<RoutineRemoteFunctionOptions, Map<String, dynamic>>(remoteFunctionOptions, (value) => value.toMap()),
      'returnTableType': ?returnTableType,
      'returnType': ?returnType,
      'routineId': routineId,
      'routineType': routineType,
      'securityMode': ?securityMode,
      'sparkOptions': ?pulumi.Input.mapOptionalInputValue<RoutineSparkOptions, Map<String, dynamic>>(sparkOptions, (value) => value.toMap()),
    };
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      arguments: map['arguments'] == null ? null : (pulumi.Input.decodeList<RoutineArgument>(map['arguments']!, (value) => RoutineArgument.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataGovernanceType: map['dataGovernanceType'] == null ? null : (map['dataGovernanceType']! as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      definitionBody: (map['definitionBody'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      determinismLevel: map['determinismLevel'] == null ? null : (map['determinismLevel']! as String).input(),
      externalRuntimeOptions: map['externalRuntimeOptions'] == null ? null : (RoutineExternalRuntimeOptions.fromMap((map['externalRuntimeOptions']! as Map).cast<String, dynamic>())).input(),
      importedLibraries: map['importedLibraries'] == null ? null : ((map['importedLibraries']! as List).cast<String>()).input(),
      language: map['language'] == null ? null : (map['language']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pythonOptions: map['pythonOptions'] == null ? null : (RoutinePythonOptions.fromMap((map['pythonOptions']! as Map).cast<String, dynamic>())).input(),
      remoteFunctionOptions: map['remoteFunctionOptions'] == null ? null : (RoutineRemoteFunctionOptions.fromMap((map['remoteFunctionOptions']! as Map).cast<String, dynamic>())).input(),
      returnTableType: map['returnTableType'] == null ? null : (map['returnTableType']! as String).input(),
      returnType: map['returnType'] == null ? null : (map['returnType']! as String).input(),
      routineId: (map['routineId'] as String).input(),
      routineType: (map['routineType'] as String).input(),
      securityMode: map['securityMode'] == null ? null : (map['securityMode']! as String).input(),
      sparkOptions: map['sparkOptions'] == null ? null : (RoutineSparkOptions.fromMap((map['sparkOptions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

