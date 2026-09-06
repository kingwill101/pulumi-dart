import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the guest agent provisioning action.
enum ProvisioningAction implements pulumi.PulumiEnum<String> {
  valueInstall("install"),
  valueUninstall("uninstall"),
  valueRepair("repair");

  const ProvisioningAction(this.wireValue);
  @override
  final String wireValue;

  static ProvisioningAction fromValue(String value) {
    for (final item in ProvisioningAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningAction value: $value');
  }
}
