/// Type of the script.
enum ScriptType {
  valueAzurePowerShell("AzurePowerShell"),
  valueAzureCLI("AzureCLI");

  const ScriptType(this.wireValue);
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
