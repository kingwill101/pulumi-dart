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
    required this.modelId,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      modelId: (map['modelId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

