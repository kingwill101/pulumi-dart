import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The script interpreter to use.
enum OSPolicyResourceExecResourceExecInterpreter implements pulumi.PulumiEnum<String> {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const OSPolicyResourceExecResourceExecInterpreter(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyResourceExecResourceExecInterpreter fromValue(String value) {
    for (final item in OSPolicyResourceExecResourceExecInterpreter.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourceExecResourceExecInterpreter value: $value');
  }
}
