// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_site_config_auto_heal_setting_action.dart';
import 'linux_web_app_site_config_auto_heal_setting_trigger.dart';

class LinuxWebAppSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final LinuxWebAppSiteConfigAutoHealSettingAction? action;
  /// A `trigger` block as defined below.
  final LinuxWebAppSiteConfigAutoHealSettingTrigger? trigger;

  /// Creates a new [LinuxWebAppSiteConfigAutoHealSetting].
  /// [action] A `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  LinuxWebAppSiteConfigAutoHealSetting({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
    };
  }

  factory LinuxWebAppSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfigAutoHealSetting(
      action: map['action'] == null ? null : LinuxWebAppSiteConfigAutoHealSettingAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : LinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

