// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityposture_posture_deployment_posture_deployment_args_doc}
/// The set of arguments for PostureDeployment.
/// {@endtemplate}
/// {@macro pulumi_securityposture_posture_deployment_posture_deployment_args_doc}
class PostureDeploymentArgs {
  /// Description of the posture deployment.
  final pulumi.Input<String>? description;
  /// The location of the resource, eg. global`.
  final pulumi.Input<String> location;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String> parent;
  /// ID of the posture deployment.
  final pulumi.Input<String> postureDeploymentId;
  /// Relative name of the posture which needs to be deployed. It should be in the format:
  /// organizations/{organization_id}/locations/{location}/postures/{posture_id}
  final pulumi.Input<String> postureId;
  /// Revision_id the posture which needs to be deployed.
  final pulumi.Input<String> postureRevisionId;
  /// The resource on which the posture should be deployed. This can be in one of the following formats:
  /// projects/{project_number},
  /// folders/{folder_number},
  /// organizations/{organization_id}
  final pulumi.Input<String> targetResource;

  /// Creates a new [PostureDeploymentArgs].
  /// [description] Description of the posture deployment.
  /// [location] The location of the resource, eg. global`.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [postureDeploymentId] ID of the posture deployment.
  /// [postureId] Relative name of the posture which needs to be deployed. It should be in the format:
  /// [postureRevisionId] Revision_id the posture which needs to be deployed.
  /// [targetResource] The resource on which the posture should be deployed. This can be in one of the following formats:
  PostureDeploymentArgs({
    this.description,
    required this.location,
    required this.parent,
    required this.postureDeploymentId,
    required this.postureId,
    required this.postureRevisionId,
    required this.targetResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'parent': parent,
      'postureDeploymentId': postureDeploymentId,
      'postureId': postureId,
      'postureRevisionId': postureRevisionId,
      'targetResource': targetResource,
    };
  }

  factory PostureDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PostureDeploymentArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: (map['location'] as String).input(),
      parent: (map['parent'] as String).input(),
      postureDeploymentId: (map['postureDeploymentId'] as String).input(),
      postureId: (map['postureId'] as String).input(),
      postureRevisionId: (map['postureRevisionId'] as String).input(),
      targetResource: (map['targetResource'] as String).input(),
    );
  }
}

