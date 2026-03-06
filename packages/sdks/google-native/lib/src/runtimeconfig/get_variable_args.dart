// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_variable_args_doc}
/// Arguments for getVariable.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_variable_args_doc}
class GetVariableArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> variableId;

  /// Creates a new [GetVariableArgs].
  /// [configId] Required.
  /// [project] Optional.
  /// [variableId] Required.
  const GetVariableArgs({
    required this.configId,
    this.project,
    required this.variableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'project': ?project,
      'variableId': variableId,
    };
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variableId: pulumi.Input.fromValue(map['variableId'] as String),
    );
  }
}

