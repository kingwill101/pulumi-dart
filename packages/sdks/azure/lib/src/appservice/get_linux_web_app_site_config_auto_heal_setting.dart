// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_auto_heal_setting_action.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger.dart';

class GetLinuxWebAppSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSettingAction>> actions;
  /// A `trigger` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppSiteConfigAutoHealSettingTrigger>> triggers;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSetting].
  /// [actions] A `action` block as defined above.
  /// [triggers] A `trigger` block as defined below.
  const GetLinuxWebAppSiteConfigAutoHealSetting({
    required this.actions,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigAutoHealSettingAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggers': pulumi.Input.mapInputValue<List<GetLinuxWebAppSiteConfigAutoHealSettingTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSetting(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingAction>(map['actions']!, (value) => GetLinuxWebAppSiteConfigAutoHealSettingAction.fromMap((value as Map).cast<String, dynamic>()))),
      triggers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTrigger>(map['triggers']!, (value) => GetLinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

