/// Gets or sets the guest agent provisioning action.
enum ProvisioningAction {
  valueInstall("install"),
  valueUninstall("uninstall"),
  valueRepair("repair");

  const ProvisioningAction(this.value);
  final String value;

  static ProvisioningAction fromValue(String value) {
    for (final item in ProvisioningAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningAction value: $value');
  }
}

