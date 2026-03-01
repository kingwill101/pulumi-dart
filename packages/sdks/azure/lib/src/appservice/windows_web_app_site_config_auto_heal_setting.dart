// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_site_config_auto_heal_setting_action.dart';
import 'windows_web_app_site_config_auto_heal_setting_trigger.dart';

class WindowsWebAppSiteConfigAutoHealSetting {
  /// An `action` block as defined above.
  final WindowsWebAppSiteConfigAutoHealSettingAction action;
  /// A `trigger` block as defined below.
  final WindowsWebAppSiteConfigAutoHealSettingTrigger trigger;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSetting].
  /// [action] An `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  WindowsWebAppSiteConfigAutoHealSetting({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'trigger': trigger.toMap(),
    };
  }

  factory WindowsWebAppSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigAutoHealSetting(
      action: WindowsWebAppSiteConfigAutoHealSettingAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: WindowsWebAppSiteConfigAutoHealSettingTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

