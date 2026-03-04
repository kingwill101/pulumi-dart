/// Required. The script interpreter to use.
enum OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha(
    this.wireValue,
  );
  final String wireValue;

  static OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha fromValue(
    String value,
  ) {
    for (final item
        in OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OSPolicyResourceExecResourceExecInterpreterOsconfigV1alpha value: $value',
    );
  }
}
