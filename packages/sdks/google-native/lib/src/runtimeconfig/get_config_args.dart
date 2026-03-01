// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_config_args_doc}
class GetConfigArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConfigArgs].
  /// [configId] Required.
  /// [project] Optional.
  GetConfigArgs({
    required pulumi.Output<String> configId,
    pulumi.Output<String>? project,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'project': ?project,
    };
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

