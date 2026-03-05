/// Identifies the type of operation.
enum GoogleCloudContentwarehouseV1AccessControlActionOperationType {
  unknown("UNKNOWN"),
  addPolicyBinding("ADD_POLICY_BINDING"),
  removePolicyBinding("REMOVE_POLICY_BINDING"),
  replacePolicyBinding("REPLACE_POLICY_BINDING");

  const GoogleCloudContentwarehouseV1AccessControlActionOperationType(this.wireValue);
  final String wireValue;

  static GoogleCloudContentwarehouseV1AccessControlActionOperationType fromValue(String value) {
    for (final item in GoogleCloudContentwarehouseV1AccessControlActionOperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContentwarehouseV1AccessControlActionOperationType value: $value');
  }
}

