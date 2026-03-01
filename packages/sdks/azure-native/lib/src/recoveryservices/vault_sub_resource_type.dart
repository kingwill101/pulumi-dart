/// GroupId for the PrivateEndpointConnection - AzureBackup, AzureBackup_secondary or AzureSiteRecovery
enum VaultSubResourceType {
  valueAzureBackup("AzureBackup"),
  valueAzureBackupSecondary("AzureBackup_secondary"),
  valueAzureSiteRecovery("AzureSiteRecovery");

  const VaultSubResourceType(this.value);
  final String value;

  static VaultSubResourceType fromValue(String value) {
    for (final item in VaultSubResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VaultSubResourceType value: $value');
  }
}

