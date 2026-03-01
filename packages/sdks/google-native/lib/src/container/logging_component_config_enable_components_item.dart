enum LoggingComponentConfigEnableComponentsItem {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  workloads("WORKLOADS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER");

  const LoggingComponentConfigEnableComponentsItem(this.value);
  final String value;

  static LoggingComponentConfigEnableComponentsItem fromValue(String value) {
    for (final item in LoggingComponentConfigEnableComponentsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingComponentConfigEnableComponentsItem value: $value');
  }
}

