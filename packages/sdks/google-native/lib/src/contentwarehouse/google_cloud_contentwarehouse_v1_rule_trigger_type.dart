/// Identifies the trigger type for running the policy.
enum GoogleCloudContentwarehouseV1RuleTriggerType {
  unknown("UNKNOWN"),
  onCreate("ON_CREATE"),
  onUpdate("ON_UPDATE"),
  onCreateLink("ON_CREATE_LINK"),
  onDeleteLink("ON_DELETE_LINK");

  const GoogleCloudContentwarehouseV1RuleTriggerType(this.value);
  final String value;

  static GoogleCloudContentwarehouseV1RuleTriggerType fromValue(String value) {
    for (final item in GoogleCloudContentwarehouseV1RuleTriggerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContentwarehouseV1RuleTriggerType value: $value');
  }
}

