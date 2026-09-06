import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed application management mode.
enum ApplicationManagementMode implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueUnmanaged("Unmanaged"),
  valueManaged("Managed");

  const ApplicationManagementMode(this.wireValue);
  @override
  final String wireValue;

  static ApplicationManagementMode fromValue(String value) {
    for (final item in ApplicationManagementMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationManagementMode value: $value');
  }
}
