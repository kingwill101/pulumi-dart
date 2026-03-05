/// Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
enum GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  consumerProject("CONSUMER_PROJECT"),
  consumerFolder("CONSUMER_FOLDER"),
  encryptionKeysProject("ENCRYPTION_KEYS_PROJECT"),
  keyring("KEYRING");

  const GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType(this.wireValue);
  final String wireValue;

  static GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType fromValue(String value) {
    for (final item in GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResourceType value: $value');
  }
}

