// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1beta_get_patch_deployment_osconfig_v1beta_args_doc}
/// Arguments for getPatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_get_patch_deployment_osconfig_v1beta_args_doc}
class GetPatchDeploymentOsconfigV1betaArgs {
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPatchDeploymentOsconfigV1betaArgs].
  /// [patchDeploymentId] Required.
  /// [project] Optional.
  GetPatchDeploymentOsconfigV1betaArgs({
    required this.patchDeploymentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchDeploymentId': patchDeploymentId,
      'project': ?project,
    };
  }

  factory GetPatchDeploymentOsconfigV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentOsconfigV1betaArgs(
      patchDeploymentId: pulumi.Input.fromValue(map['patchDeploymentId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

