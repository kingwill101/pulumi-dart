// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apihub_runtime_project_attachment_runtime_project_attachment_args_doc}
/// The set of arguments for RuntimeProjectAttachment.
/// {@endtemplate}
/// {@macro pulumi_apihub_runtime_project_attachment_runtime_project_attachment_args_doc}
class RuntimeProjectAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  final pulumi.Input<String> runtimeProject;
  /// The ID to use for the Runtime Project Attachment, which will become the
  /// final component of the Runtime Project Attachment's name. The ID must be the same
  /// as the project ID of the Google cloud project specified in the
  /// runtime_project_attachment.runtime_project field.
  final pulumi.Input<String> runtimeProjectAttachmentId;

  /// Creates a new [RuntimeProjectAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeProject] Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// [runtimeProjectAttachmentId] The ID to use for the Runtime Project Attachment, which will become the
  const RuntimeProjectAttachmentArgs({
    this.deletionPolicy,
    required this.location,
    this.project,
    required this.runtimeProject,
    required this.runtimeProjectAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'runtimeProject': runtimeProject,
      'runtimeProjectAttachmentId': runtimeProjectAttachmentId,
    };
  }

  factory RuntimeProjectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeProjectAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeProject: pulumi.Input.fromValue(map['runtimeProject'] as String),
      runtimeProjectAttachmentId: pulumi.Input.fromValue(map['runtimeProjectAttachmentId'] as String),
    );
  }
}
