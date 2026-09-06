import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the script.
enum ScriptType implements pulumi.PulumiEnum<String> {
  azurePowerShell("AzurePowerShell"),
  azureCLI("AzureCLI");

  const ScriptType(this.wireValue);
  @override
  final String wireValue;

  static ScriptType fromValue(String value) {
    for (final item in ScriptType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptType value: $value');
  }
}
