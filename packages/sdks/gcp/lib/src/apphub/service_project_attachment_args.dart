// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_service_project_attachment_service_project_attachment_args_doc}
/// The set of arguments for ServiceProjectAttachment.
/// {@endtemplate}
/// {@macro pulumi_apphub_service_project_attachment_service_project_attachment_args_doc}
class ServiceProjectAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// "Immutable. Service project name in the format: \"projects/abc\"
  /// or \"projects/123\". As input, project name with either project id or number
  /// are accepted. As output, this field will contain project number."
  final pulumi.Input<String?>? serviceProject;
  /// Required. The service project attachment identifier must contain the projectId of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  final pulumi.Input<String> serviceProjectAttachmentId;

  /// Creates a new [ServiceProjectAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceProject] "Immutable. Service project name in the format: \"projects/abc\"
  /// [serviceProjectAttachmentId] Required. The service project attachment identifier must contain the projectId of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  const ServiceProjectAttachmentArgs({
    this.deletionPolicy,
    this.project,
    this.serviceProject,
    required this.serviceProjectAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'serviceProject': ?serviceProject,
      'serviceProjectAttachmentId': serviceProjectAttachmentId,
    };
  }

  factory ServiceProjectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServiceProjectAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProject: (() { final guardedValue = map['serviceProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProjectAttachmentId: pulumi.Input.fromValue(map['serviceProjectAttachmentId'] as String),
    );
  }
}
