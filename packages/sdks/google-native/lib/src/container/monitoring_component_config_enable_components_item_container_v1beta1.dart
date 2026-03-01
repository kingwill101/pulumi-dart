enum MonitoringComponentConfigEnableComponentsItemContainerV1beta1 {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  workloads("WORKLOADS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER"),
  storage("STORAGE"),
  hpa("HPA"),
  pod("POD"),
  daemonset("DAEMONSET"),
  deployment("DEPLOYMENT"),
  statefulset("STATEFULSET");

  const MonitoringComponentConfigEnableComponentsItemContainerV1beta1(this.value);
  final String value;

  static MonitoringComponentConfigEnableComponentsItemContainerV1beta1 fromValue(String value) {
    for (final item in MonitoringComponentConfigEnableComponentsItemContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringComponentConfigEnableComponentsItemContainerV1beta1 value: $value');
  }
}

