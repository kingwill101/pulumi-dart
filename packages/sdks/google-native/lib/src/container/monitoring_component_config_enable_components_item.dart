enum MonitoringComponentConfigEnableComponentsItem {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER"),
  storage("STORAGE"),
  hpa("HPA"),
  pod("POD"),
  daemonset("DAEMONSET"),
  deployment("DEPLOYMENT"),
  statefulset("STATEFULSET");

  const MonitoringComponentConfigEnableComponentsItem(this.wireValue);
  final String wireValue;

  static MonitoringComponentConfigEnableComponentsItem fromValue(String value) {
    for (final item in MonitoringComponentConfigEnableComponentsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringComponentConfigEnableComponentsItem value: $value');
  }
}

