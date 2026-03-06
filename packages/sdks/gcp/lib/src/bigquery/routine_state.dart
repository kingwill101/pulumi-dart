// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_argument.dart';
import 'routine_external_runtime_options.dart';
import 'routine_python_options.dart';
import 'routine_remote_function_options.dart';
import 'routine_spark_options.dart';

/// Input properties used for looking up and filtering Routine resources.
class RoutineState {
  /// Input/output argument of a function or a stored procedure.
  /// Structure is documented below.
  final pulumi.Input<List<RoutineArgument>>? arguments;
  /// The time when this routine was created, in milliseconds since the
  /// epoch.
  final pulumi.Input<int>? creationTime;
  /// If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// Possible values are: `DATA_MASKING`.
  final pulumi.Input<String>? dataGovernanceType;
  /// The ID of the dataset containing this routine
  final pulumi.Input<String>? datasetId;
  /// The body of the routine. For functions, this is the expression in the AS clause.
  /// If language=SQL, it is the substring inside (but excluding) the parentheses.
  final pulumi.Input<String>? definitionBody;
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
  /// The time when this routine was modified, in milliseconds since the
  /// epoch.
  final pulumi.Input<int>? lastModifiedTime;
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
  /// the specified returned type at query time. ~&gt;**NOTE**: Because this field expects a JSON
  /// string, any changes to the string will create a diff, even if the JSON itself hasn't
  /// changed. If the API returns a different value for the same schema, e.g. it switche
  /// d the order of values or replaced STRUCT field type with RECORD field type, we currently
  /// cannot suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  final pulumi.Input<String>? returnType;
  /// The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final pulumi.Input<String>? routineId;
  /// The type of routine.
  /// Possible values are: `SCALAR_FUNCTION`, `PROCEDURE`, `TABLE_VALUED_FUNCTION`.
  final pulumi.Input<String>? routineType;
  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// Possible values are: `DEFINER`, `INVOKER`.
  final pulumi.Input<String>? securityMode;
  /// Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  /// Structure is documented below.
  final pulumi.Input<RoutineSparkOptions>? sparkOptions;

  /// Creates a new [RoutineState].
  /// [arguments] Input/output argument of a function or a stored procedure.
  /// [creationTime] The time when this routine was created, in milliseconds since the
  /// [dataGovernanceType] If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// [datasetId] The ID of the dataset containing this routine
  /// [definitionBody] The body of the routine. For functions, this is the expression in the AS clause.
  /// [description] The description of the routine if defined.
  /// [determinismLevel] The determinism level of the JavaScript UDF if defined.
  /// [externalRuntimeOptions] Options for the runtime of the external system.
  /// [importedLibraries] Optional. If language = "JAVASCRIPT", this field stores the path of the
  /// [language] The language of the routine.
  /// [lastModifiedTime] The time when this routine was modified, in milliseconds since the
  /// [project] The ID of the project in which the resource belongs.
  /// [pythonOptions] Options for a user-defined Python function.
  /// [remoteFunctionOptions] Remote function specific options.
  /// [returnTableType] Optional. Can be set only if routineType = "TABLE_VALUED_FUNCTION".
  /// [returnType] A JSON schema for the return type. Optional if language = "SQL"; required otherwise.
  /// [routineId] The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  /// [routineType] The type of routine.
  /// [securityMode] Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// [sparkOptions] Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  const RoutineState({
    this.arguments,
    this.creationTime,
    this.dataGovernanceType,
    this.datasetId,
    this.definitionBody,
    this.description,
    this.determinismLevel,
    this.externalRuntimeOptions,
    this.importedLibraries,
    this.language,
    this.lastModifiedTime,
    this.project,
    this.pythonOptions,
    this.remoteFunctionOptions,
    this.returnTableType,
    this.returnType,
    this.routineId,
    this.routineType,
    this.securityMode,
    this.sparkOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<RoutineArgument>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<RoutineArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTime': ?creationTime,
      'dataGovernanceType': ?dataGovernanceType,
      'datasetId': ?datasetId,
      'definitionBody': ?definitionBody,
      'description': ?description,
      'determinismLevel': ?determinismLevel,
      'externalRuntimeOptions': ?pulumi.Input.mapOptionalInputValue<RoutineExternalRuntimeOptions, Map<String, dynamic>>(externalRuntimeOptions, (value) => value.toMap()),
      'importedLibraries': ?importedLibraries,
      'language': ?language,
      'lastModifiedTime': ?lastModifiedTime,
      'project': ?project,
      'pythonOptions': ?pulumi.Input.mapOptionalInputValue<RoutinePythonOptions, Map<String, dynamic>>(pythonOptions, (value) => value.toMap()),
      'remoteFunctionOptions': ?pulumi.Input.mapOptionalInputValue<RoutineRemoteFunctionOptions, Map<String, dynamic>>(remoteFunctionOptions, (value) => value.toMap()),
      'returnTableType': ?returnTableType,
      'returnType': ?returnType,
      'routineId': ?routineId,
      'routineType': ?routineType,
      'securityMode': ?securityMode,
      'sparkOptions': ?pulumi.Input.mapOptionalInputValue<RoutineSparkOptions, Map<String, dynamic>>(sparkOptions, (value) => value.toMap()),
    };
  }

  factory RoutineState.fromMap(Map<String, dynamic> map) {
    return RoutineState(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutineArgument>(guardedValue, (value) => RoutineArgument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataGovernanceType: (() { final guardedValue = map['dataGovernanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      definitionBody: (() { final guardedValue = map['definitionBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      determinismLevel: (() { final guardedValue = map['determinismLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalRuntimeOptions: (() { final guardedValue = map['externalRuntimeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineExternalRuntimeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importedLibraries: (() { final guardedValue = map['importedLibraries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonOptions: (() { final guardedValue = map['pythonOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutinePythonOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remoteFunctionOptions: (() { final guardedValue = map['remoteFunctionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineRemoteFunctionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnTableType: (() { final guardedValue = map['returnTableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      returnType: (() { final guardedValue = map['returnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineId: (() { final guardedValue = map['routineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineType: (() { final guardedValue = map['routineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityMode: (() { final guardedValue = map['securityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkOptions: (() { final guardedValue = map['sparkOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineSparkOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

