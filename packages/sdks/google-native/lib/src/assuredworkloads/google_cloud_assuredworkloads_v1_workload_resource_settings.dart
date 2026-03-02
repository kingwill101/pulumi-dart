// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1_workload_resource_settings_resource_type.dart';

/// Represent the custom settings for the resources to be created.
class GoogleCloudAssuredworkloadsV1WorkloadResourceSettings {
  /// User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  final pulumi.Input<String>? displayName;
  /// Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  final pulumi.Input<String>? resourceId;
  /// Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  final pulumi.Input<GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType>? resourceType;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadResourceSettings].
  /// [displayName] User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  /// [resourceId] Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  /// [resourceType] Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  GoogleCloudAssuredworkloadsV1WorkloadResourceSettings({
    this.displayName,
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'resourceId': ?resourceId,
      'resourceType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType, String>(resourceType, (value) => value.value),
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadResourceSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadResourceSettings(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType.fromValue(map['resourceType']! as String)).input(),
    );
  }
}

