/// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
enum ExecStepConfigInterpreter {
  interpreterUnspecified("INTERPRETER_UNSPECIFIED"),
  none("NONE"),
  shell("SHELL"),
  powershell("POWERSHELL");

  const ExecStepConfigInterpreter(this.value);
  final String value;

  static ExecStepConfigInterpreter fromValue(String value) {
    for (final item in ExecStepConfigInterpreter.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecStepConfigInterpreter value: $value');
  }
}

