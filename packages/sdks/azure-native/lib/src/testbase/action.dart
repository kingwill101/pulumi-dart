/// The action of the command.
enum Action {
  valueInstall("Install"),
  valueLaunch("Launch"),
  valueClose("Close"),
  valueUninstall("Uninstall"),
  valueCustom("Custom"),
  valueFlowDrivenCustom("FlowDrivenCustom");

  const Action(this.value);
  final String value;

  static Action fromValue(String value) {
    for (final item in Action.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Action value: $value');
  }
}

