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
    pulumi.Output<List<RoutineArgument>>? arguments,
    pulumi.Output<String>? dataGovernanceType,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> definitionBody,
    pulumi.Output<String>? description,
    pulumi.Output<String>? determinismLevel,
    pulumi.Output<RoutineExternalRuntimeOptions>? externalRuntimeOptions,
    pulumi.Output<List<String>>? importedLibraries,
    pulumi.Output<String>? language,
    pulumi.Output<String>? project,
    pulumi.Output<RoutinePythonOptions>? pythonOptions,
    pulumi.Output<RoutineRemoteFunctionOptions>? remoteFunctionOptions,
    pulumi.Output<String>? returnTableType,
    pulumi.Output<String>? returnType,
    required pulumi.Output<String> routineId,
    required pulumi.Output<String> routineType,
    pulumi.Output<String>? securityMode,
    pulumi.Output<RoutineSparkOptions>? sparkOptions,
  }) :
      arguments = pulumi.Input.asOptionalInput<List<RoutineArgument>>(arguments),
      dataGovernanceType = pulumi.Input.asOptionalInput<String>(dataGovernanceType),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      definitionBody = pulumi.Input.asInput<String>(definitionBody),
      description = pulumi.Input.asOptionalInput<String>(description),
      determinismLevel = pulumi.Input.asOptionalInput<String>(determinismLevel),
      externalRuntimeOptions = pulumi.Input.asOptionalInput<RoutineExternalRuntimeOptions>(externalRuntimeOptions),
      importedLibraries = pulumi.Input.asOptionalInput<List<String>>(importedLibraries),
      language = pulumi.Input.asOptionalInput<String>(language),
      project = pulumi.Input.asOptionalInput<String>(project),
      pythonOptions = pulumi.Input.asOptionalInput<RoutinePythonOptions>(pythonOptions),
      remoteFunctionOptions = pulumi.Input.asOptionalInput<RoutineRemoteFunctionOptions>(remoteFunctionOptions),
      returnTableType = pulumi.Input.asOptionalInput<String>(returnTableType),
      returnType = pulumi.Input.asOptionalInput<String>(returnType),
      routineId = pulumi.Input.asInput<String>(routineId),
      routineType = pulumi.Input.asInput<String>(routineType),
      securityMode = pulumi.Input.asOptionalInput<String>(securityMode),
      sparkOptions = pulumi.Input.asOptionalInput<RoutineSparkOptions>(sparkOptions);

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
      arguments: map['arguments'] == null ? null : pulumi.Output.create<List<RoutineArgument>>(pulumi.Input.decodeList<RoutineArgument>(map['arguments'], (value) => RoutineArgument.fromMap((value as Map).cast<String, dynamic>()))),
      dataGovernanceType: map['dataGovernanceType'] == null ? null : pulumi.Output.create<String>(map['dataGovernanceType'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      definitionBody: pulumi.Output.create<String>(map['definitionBody'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      determinismLevel: map['determinismLevel'] == null ? null : pulumi.Output.create<String>(map['determinismLevel'] as String),
      externalRuntimeOptions: map['externalRuntimeOptions'] == null ? null : pulumi.Output.create<RoutineExternalRuntimeOptions>(RoutineExternalRuntimeOptions.fromMap((map['externalRuntimeOptions'] as Map).cast<String, dynamic>())),
      importedLibraries: map['importedLibraries'] == null ? null : pulumi.Output.create<List<String>>((map['importedLibraries'] as List).cast<String>()),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pythonOptions: map['pythonOptions'] == null ? null : pulumi.Output.create<RoutinePythonOptions>(RoutinePythonOptions.fromMap((map['pythonOptions'] as Map).cast<String, dynamic>())),
      remoteFunctionOptions: map['remoteFunctionOptions'] == null ? null : pulumi.Output.create<RoutineRemoteFunctionOptions>(RoutineRemoteFunctionOptions.fromMap((map['remoteFunctionOptions'] as Map).cast<String, dynamic>())),
      returnTableType: map['returnTableType'] == null ? null : pulumi.Output.create<String>(map['returnTableType'] as String),
      returnType: map['returnType'] == null ? null : pulumi.Output.create<String>(map['returnType'] as String),
      routineId: pulumi.Output.create<String>(map['routineId'] as String),
      routineType: pulumi.Output.create<String>(map['routineType'] as String),
      securityMode: map['securityMode'] == null ? null : pulumi.Output.create<String>(map['securityMode'] as String),
      sparkOptions: map['sparkOptions'] == null ? null : pulumi.Output.create<RoutineSparkOptions>(RoutineSparkOptions.fromMap((map['sparkOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

