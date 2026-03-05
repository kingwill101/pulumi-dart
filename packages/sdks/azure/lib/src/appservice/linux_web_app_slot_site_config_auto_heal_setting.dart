// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_site_config_auto_heal_setting_action.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger.dart';

class LinuxWebAppSlotSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final pulumi.Input<LinuxWebAppSlotSiteConfigAutoHealSettingAction>? action;
  /// A `trigger` block as defined below.
  final pulumi.Input<LinuxWebAppSlotSiteConfigAutoHealSettingTrigger>? trigger;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSetting].
  /// [action] A `action` block as defined above.
  /// [trigger] A `trigger` block as defined below.
  LinuxWebAppSlotSiteConfigAutoHealSetting({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotSiteConfigAutoHealSettingAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'trigger': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotSiteConfigAutoHealSettingTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppSlotSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigAutoHealSetting(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotSiteConfigAutoHealSettingAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

