// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_slot_site_config_auto_heal_setting_action.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger.dart';

class LinuxWebAppSlotSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final LinuxWebAppSlotSiteConfigAutoHealSettingAction? action;
  /// A `trigger` block as defined below.
  final LinuxWebAppSlotSiteConfigAutoHealSettingTrigger? trigger;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSetting].
  /// [action] A `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  LinuxWebAppSlotSiteConfigAutoHealSetting({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
    };
  }

  factory LinuxWebAppSlotSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigAutoHealSetting(
      action: map['action'] == null ? null : LinuxWebAppSlotSiteConfigAutoHealSettingAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : LinuxWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

