/// backup protectionIntent type.
enum ProtectionIntentItemType {
  valueInvalid("Invalid"),
  valueAzureResourceItem("AzureResourceItem"),
  valueRecoveryServiceVaultItem("RecoveryServiceVaultItem"),
  valueAzureWorkloadContainerAutoProtectionIntent("AzureWorkloadContainerAutoProtectionIntent"),
  valueAzureWorkloadAutoProtectionIntent("AzureWorkloadAutoProtectionIntent"),
  valueAzureWorkloadSQLAutoProtectionIntent("AzureWorkloadSQLAutoProtectionIntent");

  const ProtectionIntentItemType(this.value);
  final String value;

  static ProtectionIntentItemType fromValue(String value) {
    for (final item in ProtectionIntentItemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectionIntentItemType value: $value');
  }
}

