// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_site_config_auto_heal_setting_action.dart';
import 'linux_web_app_site_config_auto_heal_setting_trigger.dart';

class LinuxWebAppSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigAutoHealSettingAction>? action;
  /// A `trigger` block as defined below.
  final pulumi.Input<LinuxWebAppSiteConfigAutoHealSettingTrigger>? trigger;

  /// Creates a new [LinuxWebAppSiteConfigAutoHealSetting].
  /// [action] A `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  LinuxWebAppSiteConfigAutoHealSetting({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigAutoHealSettingAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'trigger': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfigAutoHealSettingTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfigAutoHealSetting(
      action: map['action'] == null ? null : (LinuxWebAppSiteConfigAutoHealSettingAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      trigger: map['trigger'] == null ? null : (LinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

