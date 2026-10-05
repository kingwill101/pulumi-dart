import 'package:pulumi/pulumi.dart' as pulumi;

enum LoggingComponentConfigEnableComponentsItem implements pulumi.PulumiEnum<String> {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  workloads("WORKLOADS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER");

  const LoggingComponentConfigEnableComponentsItem(this.wireValue);
  @override
  final String wireValue;

  static LoggingComponentConfigEnableComponentsItem fromValue(String value) {
    for (final item in LoggingComponentConfigEnableComponentsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingComponentConfigEnableComponentsItem value: $value');
  }
}
