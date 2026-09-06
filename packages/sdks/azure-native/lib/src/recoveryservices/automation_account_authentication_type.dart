import 'package:pulumi/pulumi.dart' as pulumi;

/// A value indicating the type authentication to use for automation Account.
enum AutomationAccountAuthenticationType implements pulumi.PulumiEnum<String> {
  valueRunAsAccount("RunAsAccount"),
  valueSystemAssignedIdentity("SystemAssignedIdentity");

  const AutomationAccountAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AutomationAccountAuthenticationType fromValue(String value) {
    for (final item in AutomationAccountAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationAccountAuthenticationType value: $value');
  }
}
