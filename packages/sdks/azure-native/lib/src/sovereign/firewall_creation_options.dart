/// Parameter used for deploying a Firewall: Select 'No' to skip deployment, 'Standard' to deploy the Standard SKU, or 'Premium' to deploy the Premium SKU.
enum FirewallCreationOptions {
  none("None"),
  standard("Standard"),
  premium("Premium");

  const FirewallCreationOptions(this.value);
  final String value;

  static FirewallCreationOptions fromValue(String value) {
    for (final item in FirewallCreationOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallCreationOptions value: $value');
  }
}

