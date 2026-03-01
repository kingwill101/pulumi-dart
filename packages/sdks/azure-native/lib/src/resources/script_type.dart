/// Type of the script.
enum ScriptType {
  valueAzurePowerShell("AzurePowerShell"),
  valueAzureCLI("AzureCLI");

  const ScriptType(this.value);
  final String value;

  static ScriptType fromValue(String value) {
    for (final item in ScriptType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptType value: $value');
  }
}

