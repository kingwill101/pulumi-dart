// ignore_for_file: unused_element, unnecessary_cast


/// Represent the custom settings for the resources to be created.
class GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse {
  /// User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  final String displayName;
  /// Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  final String resourceId;
  /// Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  final String resourceType;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse].
  /// [displayName] User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  /// [resourceId] Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google.
  /// [resourceType] Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse({
    required this.displayName,
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse(
      displayName: map['displayName'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

