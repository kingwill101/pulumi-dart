import 'package:pulumi/pulumi.dart' as pulumi;

enum RbacStackScope implements pulumi.PulumiEnum<String> {
  stackCancelUpdate("stack:cancel_update"),
  stackCreate("stack:create"),
  stackDecrypt("stack:decrypt"),
  stackDelete("stack:delete"),
  stackEncrypt("stack:encrypt"),
  stackExport("stack:export"),
  stackImport("stack:import"),
  stackRead("stack:read"),
  stackRename("stack:rename"),
  stackTransfer("stack:transfer"),
  stackWrite("stack:write"),
  stackAccessRead("stack_access:read"),
  stackAccessUpdate("stack_access:update"),
  stackDeploymentCreate("stack_deployment:create"),
  stackDeploymentRead("stack_deployment:read"),
  stackDeploymentSettingsEncrypt("stack_deployment_settings:encrypt"),
  stackDeploymentSettingsRead("stack_deployment_settings:read"),
  stackDeploymentSettingsWrite("stack_deployment_settings:write"),
  stackScheduleCreate("stack_schedule:create"),
  stackScheduleDelete("stack_schedule:delete"),
  stackSchedulePause("stack_schedule:pause"),
  stackScheduleRead("stack_schedule:read"),
  stackScheduleResume("stack_schedule:resume"),
  stackScheduleUpdate("stack_schedule:update"),
  stackTagsUpdate("stack_tags:update"),
  stackWebhookCreate("stack_webhook:create"),
  stackWebhookDelete("stack_webhook:delete"),
  stackWebhookRead("stack_webhook:read"),
  stackWebhookUpdate("stack_webhook:update");

  const RbacStackScope(this.wireValue);
  @override
  final String wireValue;

  static RbacStackScope fromValue(String value) {
    for (final item in RbacStackScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RbacStackScope value: $value');
  }
}
