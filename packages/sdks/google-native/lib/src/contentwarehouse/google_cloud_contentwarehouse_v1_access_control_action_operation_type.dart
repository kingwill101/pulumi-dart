/// Identifies the type of operation.
enum GoogleCloudContentwarehouseV1AccessControlActionOperationType {
  unknown("UNKNOWN"),
  addPolicyBinding("ADD_POLICY_BINDING"),
  removePolicyBinding("REMOVE_POLICY_BINDING"),
  replacePolicyBinding("REPLACE_POLICY_BINDING");

  const GoogleCloudContentwarehouseV1AccessControlActionOperationType(this.value);
  final String value;

  static GoogleCloudContentwarehouseV1AccessControlActionOperationType fromValue(String value) {
    for (final item in GoogleCloudContentwarehouseV1AccessControlActionOperationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContentwarehouseV1AccessControlActionOperationType value: $value');
  }
}

