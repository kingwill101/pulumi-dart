// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_site_config_auto_heal_setting_action.dart';
import 'windows_web_app_site_config_auto_heal_setting_trigger.dart';

class WindowsWebAppSiteConfigAutoHealSetting {
  /// An `action` block as defined above.
  final pulumi.Input<WindowsWebAppSiteConfigAutoHealSettingAction> action;
  /// A `trigger` block as defined below.
  final pulumi.Input<WindowsWebAppSiteConfigAutoHealSettingTrigger> trigger;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSetting].
  /// [action] An `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  const WindowsWebAppSiteConfigAutoHealSetting({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<WindowsWebAppSiteConfigAutoHealSettingAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'trigger': pulumi.Input.mapInputValue<WindowsWebAppSiteConfigAutoHealSettingTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory WindowsWebAppSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigAutoHealSetting(
      action: pulumi.Input.fromValue(WindowsWebAppSiteConfigAutoHealSettingAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      trigger: pulumi.Input.fromValue(WindowsWebAppSiteConfigAutoHealSettingTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

