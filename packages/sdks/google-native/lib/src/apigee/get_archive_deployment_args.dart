// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_archive_deployment_args_doc}
/// Arguments for getArchiveDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_archive_deployment_args_doc}
class GetArchiveDeploymentArgs {
  final pulumi.Input<String> archiveDeploymentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetArchiveDeploymentArgs].
  /// [archiveDeploymentId] Required.
  /// [environmentId] Required.
  /// [organizationId] Required.
  const GetArchiveDeploymentArgs({
    required this.archiveDeploymentId,
    required this.environmentId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveDeploymentId': archiveDeploymentId,
      'environmentId': environmentId,
      'organizationId': organizationId,
    };
  }

  factory GetArchiveDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetArchiveDeploymentArgs(
      archiveDeploymentId: pulumi.Input.fromValue(map['archiveDeploymentId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

