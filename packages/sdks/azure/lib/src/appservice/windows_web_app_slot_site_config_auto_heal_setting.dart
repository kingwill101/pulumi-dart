// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_site_config_auto_heal_setting_action.dart';
import 'windows_web_app_slot_site_config_auto_heal_setting_trigger.dart';

class WindowsWebAppSlotSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final pulumi.Input<WindowsWebAppSlotSiteConfigAutoHealSettingAction> action;

  /// A `trigger` block as defined below.
  final pulumi.Input<WindowsWebAppSlotSiteConfigAutoHealSettingTrigger> trigger;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSetting].
  /// [action] A `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  WindowsWebAppSlotSiteConfigAutoHealSetting({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            WindowsWebAppSlotSiteConfigAutoHealSettingAction,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'trigger':
          pulumi.Input.mapInputValue<
            WindowsWebAppSlotSiteConfigAutoHealSettingTrigger,
            Map<String, dynamic>
          >(trigger, (value) => value.toMap()),
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return WindowsWebAppSlotSiteConfigAutoHealSetting(
      action: pulumi.Input.fromValue(
        WindowsWebAppSlotSiteConfigAutoHealSettingAction.fromMap(
          (map['action']! as Map).cast<String, dynamic>(),
        ),
      ),
      trigger: pulumi.Input.fromValue(
        WindowsWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap(
          (map['trigger']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
