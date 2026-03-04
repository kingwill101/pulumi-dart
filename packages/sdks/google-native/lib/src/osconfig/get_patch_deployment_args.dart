// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1_get_patch_deployment_args_doc}
/// Arguments for getPatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1_get_patch_deployment_args_doc}
class GetPatchDeploymentArgs {
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPatchDeploymentArgs].
  /// [patchDeploymentId] Required.
  /// [project] Optional.
  GetPatchDeploymentArgs({required this.patchDeploymentId, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchDeploymentId': patchDeploymentId,
      'project': ?project,
    };
  }

  factory GetPatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentArgs(
      patchDeploymentId: pulumi.Input.fromValue(
        map['patchDeploymentId'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
