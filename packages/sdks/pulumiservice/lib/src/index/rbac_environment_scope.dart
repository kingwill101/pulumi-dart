import 'package:pulumi/pulumi.dart' as pulumi;

enum RbacEnvironmentScope implements pulumi.PulumiEnum<String> {
  changeGateCreate("change_gate:create"),
  changeGateDelete("change_gate:delete"),
  changeGateUpdate("change_gate:update"),
  environmentClone("environment:clone"),
  environmentDelete("environment:delete"),
  environmentOpen("environment:open"),
  environmentRead("environment:read"),
  environmentRotate("environment:rotate"),
  environmentRotateHistory("environment:rotate_history"),
  environmentWrite("environment:write"),
  environmentAccessRead("environment_access:read"),
  environmentAccessUpdate("environment_access:update"),
  environmentScheduleCreate("environment_schedule:create"),
  environmentScheduleDelete("environment_schedule:delete"),
  environmentSchedulePause("environment_schedule:pause"),
  environmentScheduleRead("environment_schedule:read"),
  environmentScheduleResume("environment_schedule:resume"),
  environmentScheduleUpdate("environment_schedule:update"),
  environmentSettingsRead("environment_settings:read"),
  environmentSettingsUpdate("environment_settings:update"),
  environmentTagCreate("environment_tag:create"),
  environmentTagDelete("environment_tag:delete"),
  environmentTagRead("environment_tag:read"),
  environmentTagUpdate("environment_tag:update"),
  environmentVersionCreate("environment_version:create"),
  environmentVersionDelete("environment_version:delete"),
  environmentVersionOpen("environment_version:open"),
  environmentVersionRead("environment_version:read"),
  environmentVersionRetract("environment_version:retract"),
  environmentVersionUpdate("environment_version:update"),
  environmentWebhookCreate("environment_webhook:create"),
  environmentWebhookDelete("environment_webhook:delete"),
  environmentWebhookRead("environment_webhook:read"),
  environmentWebhookUpdate("environment_webhook:update");

  const RbacEnvironmentScope(this.wireValue);
  @override
  final String wireValue;

  static RbacEnvironmentScope fromValue(String value) {
    for (final item in RbacEnvironmentScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RbacEnvironmentScope value: $value');
  }
}
