import 'package:pulumi/pulumi.dart' as pulumi;

enum MonitoringComponentConfigEnableComponentsItemContainerV1beta1 implements pulumi.PulumiEnum<String> {
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

  const MonitoringComponentConfigEnableComponentsItemContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static MonitoringComponentConfigEnableComponentsItemContainerV1beta1 fromValue(String value) {
    for (final item in MonitoringComponentConfigEnableComponentsItemContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringComponentConfigEnableComponentsItemContainerV1beta1 value: $value');
  }
}
