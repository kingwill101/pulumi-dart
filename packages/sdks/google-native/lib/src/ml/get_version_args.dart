// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ml_v1_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArgs].
  /// [modelId] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionArgs({
    required pulumi.Output<String> modelId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> versionId,
  }) :
      modelId = pulumi.Input.asInput<String>(modelId),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      modelId: pulumi.Output.create<String>(map['modelId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

