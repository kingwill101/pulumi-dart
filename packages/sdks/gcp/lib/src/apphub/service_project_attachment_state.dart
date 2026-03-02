// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceProjectAttachment resources.
class ServiceProjectAttachmentState {
  /// Output only. Create time.
  final pulumi.Input<String>? createTime;
  /// "Identifier. The resource name of a ServiceProjectAttachment. Format:\"projects/{host-project-id}/locations/global/serviceProjectAttachments/{service-project-id}.\""
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// "Immutable. Service project name in the format: \"projects/abc\"
  /// or \"projects/123\". As input, project name with either project id or number
  /// are accepted. As output, this field will contain project number."
  final pulumi.Input<String>? serviceProject;
  /// Required. The service project attachment identifier must contain the project_id of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  final pulumi.Input<String>? serviceProjectAttachmentId;
  /// ServiceProjectAttachment state.
  final pulumi.Input<String>? state;
  /// Output only. A globally unique identifier (in UUID4 format) for the `ServiceProjectAttachment`.
  final pulumi.Input<String>? uid;

  /// Creates a new [ServiceProjectAttachmentState].
  /// [createTime] Output only. Create time.
  /// [name] "Identifier. The resource name of a ServiceProjectAttachment. Format:\"projects/{host-project-id}/locations/global/serviceProjectAttachments/{service-project-id}.\""
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceProject] "Immutable. Service project name in the format: \"projects/abc\"
  /// [serviceProjectAttachmentId] Required. The service project attachment identifier must contain the project_id of the service project specified in the service_project_attachment.service_project field. Hint: "projects/{project_id}"
  /// [state] ServiceProjectAttachment state.
  /// [uid] Output only. A globally unique identifier (in UUID4 format) for the `ServiceProjectAttachment`.
  ServiceProjectAttachmentState({
    this.createTime,
    this.name,
    this.project,
    this.serviceProject,
    this.serviceProjectAttachmentId,
    this.state,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'name': ?name,
      'project': ?project,
      'serviceProject': ?serviceProject,
      'serviceProjectAttachmentId': ?serviceProjectAttachmentId,
      'state': ?state,
      'uid': ?uid,
    };
  }

  factory ServiceProjectAttachmentState.fromMap(Map<String, dynamic> map) {
    return ServiceProjectAttachmentState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceProject: map['serviceProject'] == null ? null : (map['serviceProject'] as String).input(),
      serviceProjectAttachmentId: map['serviceProjectAttachmentId'] == null ? null : (map['serviceProjectAttachmentId'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
    );
  }
}

