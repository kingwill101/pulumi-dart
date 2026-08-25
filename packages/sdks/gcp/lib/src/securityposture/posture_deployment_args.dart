// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityposture_posture_deployment_posture_deployment_args_doc}
/// The set of arguments for PostureDeployment.
/// {@endtemplate}
/// {@macro pulumi_securityposture_posture_deployment_posture_deployment_args_doc}
class PostureDeploymentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the posture deployment.
  final pulumi.Input<String?>? description;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the posture deployment.
  /// [location] The location of the resource, eg. global`.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [postureDeploymentId] ID of the posture deployment.
  /// [postureId] Relative name of the posture which needs to be deployed. It should be in the format:
  /// [postureRevisionId] Revision_id the posture which needs to be deployed.
  /// [targetResource] The resource on which the posture should be deployed. This can be in one of the following formats:
  const PostureDeploymentArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      postureDeploymentId: pulumi.Input.fromValue(map['postureDeploymentId'] as String),
      postureId: pulumi.Input.fromValue(map['postureId'] as String),
      postureRevisionId: pulumi.Input.fromValue(map['postureRevisionId'] as String),
      targetResource: pulumi.Input.fromValue(map['targetResource'] as String),
    );
  }
}
