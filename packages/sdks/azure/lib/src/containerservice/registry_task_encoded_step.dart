// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskEncodedStep {
  /// The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  final pulumi.Input<String>? contextAccessToken;

  /// The URL (absolute or relative) of the source context for this step.
  final pulumi.Input<String>? contextPath;

  /// Specifies a map of secret values that can be passed when running a task.
  final pulumi.Input<Map<String, String>>? secretValues;

  /// The (optionally base64 encoded) content of the build template.
  final pulumi.Input<String> taskContent;

  /// The (optionally base64 encoded) content of the build parameters.
  final pulumi.Input<String>? valueContent;

  /// Specifies a map of values that can be passed when running a task.
  final pulumi.Input<Map<String, String>>? values;

  /// Creates a new [RegistryTaskEncodedStep].
  /// [contextAccessToken] The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  /// [contextPath] The URL (absolute or relative) of the source context for this step.
  /// [secretValues] Specifies a map of secret values that can be passed when running a task.
  /// [taskContent] The (optionally base64 encoded) content of the build template.
  /// [valueContent] The (optionally base64 encoded) content of the build parameters.
  /// [values] Specifies a map of values that can be passed when running a task.
  RegistryTaskEncodedStep({
    this.contextAccessToken,
    this.contextPath,
    this.secretValues,
    required this.taskContent,
    this.valueContent,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'secretValues': ?secretValues,
      'taskContent': taskContent,
      'valueContent': ?valueContent,
      'values': ?values,
    };
  }

  factory RegistryTaskEncodedStep.fromMap(Map<String, dynamic> map) {
    return RegistryTaskEncodedStep(
      contextAccessToken: (() {
        final guardedValue = map['contextAccessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contextPath: (() {
        final guardedValue = map['contextPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretValues: (() {
        final guardedValue = map['secretValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      taskContent: pulumi.Input.fromValue(map['taskContent'] as String),
      valueContent: (() {
        final guardedValue = map['valueContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
