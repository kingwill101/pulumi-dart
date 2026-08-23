/// The action of the command.
enum Action {
  valueInstall("Install"),
  valueLaunch("Launch"),
  valueClose("Close"),
  valueUninstall("Uninstall"),
  valueCustom("Custom"),
  valueFlowDrivenCustom("FlowDrivenCustom");

  const Action(this.wireValue);
  final String wireValue;

  static Action fromValue(String value) {
    for (final item in Action.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Action value: $value');
  }
}
