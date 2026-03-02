// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadResourceSetting {
  /// User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  final pulumi.Input<String>? displayName;
  /// Resource identifier. For a project this represents projectId. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  final pulumi.Input<String>? resourceId;
  /// Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT) Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  final pulumi.Input<String>? resourceType;

  /// Creates a new [WorkloadResourceSetting].
  /// [displayName] User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  /// [resourceId] Resource identifier. For a project this represents projectId. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  /// [resourceType] Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT) Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  WorkloadResourceSetting({
    this.displayName,
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory WorkloadResourceSetting.fromMap(Map<String, dynamic> map) {
    return WorkloadResourceSetting(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
    );
  }
}

