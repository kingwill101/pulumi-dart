import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupId for the PrivateEndpointConnection - AzureBackup, AzureBackup_secondary or AzureSiteRecovery
enum VaultSubResourceType implements pulumi.PulumiEnum<String> {
  valueAzureBackup("AzureBackup"),
  valueAzureBackupSecondary("AzureBackup_secondary"),
  valueAzureSiteRecovery("AzureSiteRecovery");

  const VaultSubResourceType(this.wireValue);
  @override
  final String wireValue;

  static VaultSubResourceType fromValue(String value) {
    for (final item in VaultSubResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VaultSubResourceType value: $value');
  }
}
