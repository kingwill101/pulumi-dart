// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskFileStep {
  /// The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  final pulumi.Input<String?>? contextAccessToken;
  /// The URL (absolute or relative) of the source context for this step.
  final pulumi.Input<String?>? contextPath;
  /// Specifies a map of secret values that can be passed when running a task.
  final pulumi.Input<Map<String, String>?>? secretValues;
  /// The task template file path relative to the source context.
  final pulumi.Input<String> taskFilePath;
  /// The parameters file path relative to the source context.
  final pulumi.Input<String?>? valueFilePath;
  /// Specifies a map of values that can be passed when running a task.
  final pulumi.Input<Map<String, String>?>? values;

  /// Creates a new [RegistryTaskFileStep].
  /// [contextAccessToken] The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  /// [contextPath] The URL (absolute or relative) of the source context for this step.
  /// [secretValues] Specifies a map of secret values that can be passed when running a task.
  /// [taskFilePath] The task template file path relative to the source context.
  /// [valueFilePath] The parameters file path relative to the source context.
  /// [values] Specifies a map of values that can be passed when running a task.
  const RegistryTaskFileStep({
    this.contextAccessToken,
    this.contextPath,
    this.secretValues,
    required this.taskFilePath,
    this.valueFilePath,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'secretValues': ?secretValues,
      'taskFilePath': taskFilePath,
      'valueFilePath': ?valueFilePath,
      'values': ?values,
    };
  }

  factory RegistryTaskFileStep.fromMap(Map<String, dynamic> map) {
    return RegistryTaskFileStep(
      contextAccessToken: (() { final guardedValue = map['contextAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextPath: (() { final guardedValue = map['contextPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretValues: (() { final guardedValue = map['secretValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskFilePath: pulumi.Input.fromValue(map['taskFilePath'] as String),
      valueFilePath: (() { final guardedValue = map['valueFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
