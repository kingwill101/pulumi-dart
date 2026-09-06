import 'package:pulumi/pulumi.dart' as pulumi;

/// backup protectionIntent type.
enum ProtectionIntentItemType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueAzureResourceItem("AzureResourceItem"),
  valueRecoveryServiceVaultItem("RecoveryServiceVaultItem"),
  valueAzureWorkloadContainerAutoProtectionIntent("AzureWorkloadContainerAutoProtectionIntent"),
  valueAzureWorkloadAutoProtectionIntent("AzureWorkloadAutoProtectionIntent"),
  valueAzureWorkloadSQLAutoProtectionIntent("AzureWorkloadSQLAutoProtectionIntent");

  const ProtectionIntentItemType(this.wireValue);
  @override
  final String wireValue;

  static ProtectionIntentItemType fromValue(String value) {
    for (final item in ProtectionIntentItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectionIntentItemType value: $value');
  }
}
