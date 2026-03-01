/// A value indicating the type authentication to use for automation Account.
enum AutomationAccountAuthenticationType {
  valueRunAsAccount("RunAsAccount"),
  valueSystemAssignedIdentity("SystemAssignedIdentity");

  const AutomationAccountAuthenticationType(this.value);
  final String value;

  static AutomationAccountAuthenticationType fromValue(String value) {
    for (final item in AutomationAccountAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationAccountAuthenticationType value: $value');
  }
}

