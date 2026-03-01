// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_slot_site_config_auto_heal_setting_action.dart';
import 'windows_web_app_slot_site_config_auto_heal_setting_trigger.dart';

class WindowsWebAppSlotSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final WindowsWebAppSlotSiteConfigAutoHealSettingAction action;
  /// A `trigger` block as defined below.
  final WindowsWebAppSlotSiteConfigAutoHealSettingTrigger trigger;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSetting].
  /// [action] A `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  WindowsWebAppSlotSiteConfigAutoHealSetting({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'trigger': trigger.toMap(),
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigAutoHealSetting(
      action: WindowsWebAppSlotSiteConfigAutoHealSettingAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: WindowsWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

