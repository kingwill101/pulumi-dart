// ignore_for_file: unused_element, unnecessary_cast

import 'resource_id_response_cloudresourcemanager_v1beta1.dart';

/// Result data returned by getProject.
class GetProjectCloudresourcemanagerV1beta1Result {
  /// Creation time. Read-only.
  final String createTime;
  /// The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"environment" : "dev"` Read-write.
  final Map<String, String> labels;
  /// The Project lifecycle state. Read-only.
  final String lifecycleState;
  /// The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  final String name;
  /// An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent. Read-write.
  final ResourceIdResponseCloudresourcemanagerV1beta1 parent;
  /// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  final String projectId;
  /// The number uniquely identifying the project. Example: `415104041262` Read-only.
  final String projectNumber;

  /// Creates a new [GetProjectCloudresourcemanagerV1beta1Result].
  /// [createTime] Creation time. Read-only.
  /// [labels] The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"environment" : "dev"` Read-write.
  /// [lifecycleState] The Project lifecycle state. Read-only.
  /// [name] The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  /// [parent] An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent. Read-write.
  /// [projectId] The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  /// [projectNumber] The number uniquely identifying the project. Example: `415104041262` Read-only.
  const GetProjectCloudresourcemanagerV1beta1Result({
    required this.createTime,
    required this.labels,
    required this.lifecycleState,
    required this.name,
    required this.parent,
    required this.projectId,
    required this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'labels': labels,
      'lifecycleState': lifecycleState,
      'name': name,
      'parent': parent.toMap(),
      'projectId': projectId,
      'projectNumber': projectNumber,
    };
  }

  factory GetProjectCloudresourcemanagerV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetProjectCloudresourcemanagerV1beta1Result(
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
      parent: ResourceIdResponseCloudresourcemanagerV1beta1.fromMap((map['parent']! as Map).cast<String, dynamic>()),
      projectId: map['projectId'] as String,
      projectNumber: map['projectNumber'] as String,
    );
  }
}

