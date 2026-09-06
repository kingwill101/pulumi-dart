import 'package:pulumi/pulumi.dart' as pulumi;

/// The shell type of the cloud shell.
enum ShellType implements pulumi.PulumiEnum<String> {
  valueBash("bash"),
  valuePwsh("pwsh"),
  valuePowershell("powershell");

  const ShellType(this.wireValue);
  @override
  final String wireValue;

  static ShellType fromValue(String value) {
    for (final item in ShellType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShellType value: $value');
  }
}
