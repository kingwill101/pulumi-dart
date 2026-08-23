// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuntimeProjectAttachment resources.
class RuntimeProjectAttachmentState {
  /// Output only. Create time.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of a runtime project attachment.
  /// Format: "projects/{project}/locations/{location}/runtimeProjectAttachments/{runtime_project_attachment_id}"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  final pulumi.Input<String>? runtimeProject;
  /// The ID to use for the Runtime Project Attachment, which will become the
  /// final component of the Runtime Project Attachment's name. The ID must be the same
  /// as the project ID of the Google cloud project specified in the
  /// runtime_project_attachment.runtime_project field.
  final pulumi.Input<String>? runtimeProjectAttachmentId;

  /// Creates a new [RuntimeProjectAttachmentState].
  /// [createTime] Output only. Create time.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] Identifier. The resource name of a runtime project attachment.
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeProject] Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// [runtimeProjectAttachmentId] The ID to use for the Runtime Project Attachment, which will become the
  const RuntimeProjectAttachmentState({
    this.createTime,
    this.deletionPolicy,
    this.location,
    this.name,
    this.project,
    this.runtimeProject,
    this.runtimeProjectAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'runtimeProject': ?runtimeProject,
      'runtimeProjectAttachmentId': ?runtimeProjectAttachmentId,
    };
  }

  factory RuntimeProjectAttachmentState.fromMap(Map<String, dynamic> map) {
    return RuntimeProjectAttachmentState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeProject: (() { final guardedValue = map['runtimeProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeProjectAttachmentId: (() { final guardedValue = map['runtimeProjectAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
