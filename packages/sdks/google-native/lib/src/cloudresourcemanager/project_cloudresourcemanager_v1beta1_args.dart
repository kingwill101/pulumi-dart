// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_lifecycle_state_cloudresourcemanager_v1beta1.dart';
import 'resource_id_cloudresourcemanager_v1beta1.dart';

/// {@template pulumi_cloudresourcemanager_v1beta1_project_cloudresourcemanager_v1beta1_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1beta1_project_cloudresourcemanager_v1beta1_args_doc}
class ProjectCloudresourcemanagerV1beta1Args {
  /// Creation time. Read-only.
  final pulumi.Input<String>? createTime;
  /// The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"environment" : "dev"` Read-write.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Project lifecycle state. Read-only.
  final pulumi.Input<ProjectLifecycleStateCloudresourcemanagerV1beta1>? lifecycleState;
  /// The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  final pulumi.Input<String>? name;
  /// An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent. Read-write.
  final pulumi.Input<ResourceIdCloudresourcemanagerV1beta1>? parent;
  /// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  final pulumi.Input<String>? projectId;
  /// The number uniquely identifying the project. Example: `415104041262` Read-only.
  final pulumi.Input<String>? projectNumber;
  /// A now unused experiment opt-out option.
  final pulumi.Input<bool>? useLegacyStack;

  /// Creates a new [ProjectCloudresourcemanagerV1beta1Args].
  /// [createTime] Creation time. Read-only.
  /// [labels] The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"environment" : "dev"` Read-write.
  /// [lifecycleState] The Project lifecycle state. Read-only.
  /// [name] The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  /// [parent] An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent. Read-write.
  /// [projectId] The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  /// [projectNumber] The number uniquely identifying the project. Example: `415104041262` Read-only.
  /// [useLegacyStack] A now unused experiment opt-out option.
  ProjectCloudresourcemanagerV1beta1Args({
    this.createTime,
    this.labels,
    this.lifecycleState,
    this.name,
    this.parent,
    this.projectId,
    this.projectNumber,
    this.useLegacyStack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'labels': ?labels,
      'lifecycleState': ?pulumi.Input.mapOptionalInputValue<ProjectLifecycleStateCloudresourcemanagerV1beta1, String>(lifecycleState, (value) => value.value),
      'name': ?name,
      'parent': ?pulumi.Input.mapOptionalInputValue<ResourceIdCloudresourcemanagerV1beta1, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'projectId': ?projectId,
      'projectNumber': ?projectNumber,
      'useLegacyStack': ?useLegacyStack,
    };
  }

  factory ProjectCloudresourcemanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ProjectCloudresourcemanagerV1beta1Args(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      lifecycleState: map['lifecycleState'] == null ? null : (ProjectLifecycleStateCloudresourcemanagerV1beta1.fromValue(map['lifecycleState']! as String)).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (ResourceIdCloudresourcemanagerV1beta1.fromMap((map['parent']! as Map).cast<String, dynamic>())).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      projectNumber: map['projectNumber'] == null ? null : (map['projectNumber']! as String).input(),
      useLegacyStack: map['useLegacyStack'] == null ? null : (map['useLegacyStack']! as bool).input(),
    );
  }
}

