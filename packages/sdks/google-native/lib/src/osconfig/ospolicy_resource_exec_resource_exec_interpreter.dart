/// Required. The script interpreter to use.
enum OSPolicyResourceExecResourceExecInterpreter {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const OSPolicyResourceExecResourceExecInterpreter(this.wireValue);
  final String wireValue;

  static OSPolicyResourceExecResourceExecInterpreter fromValue(String value) {
    for (final item in OSPolicyResourceExecResourceExecInterpreter.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OSPolicyResourceExecResourceExecInterpreter value: $value',
    );
  }
}
