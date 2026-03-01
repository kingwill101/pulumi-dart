// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_auto_heal_setting_action.dart';
import 'get_linux_web_app_site_config_auto_heal_setting_trigger.dart';

class GetLinuxWebAppSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final List<GetLinuxWebAppSiteConfigAutoHealSettingAction> actions;
  /// A `trigger` block as defined below.
  final List<GetLinuxWebAppSiteConfigAutoHealSettingTrigger> triggers;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSetting].
  /// [actions] A `action` block as defined above.
  /// [triggers] A `trigger` block as defined below.
  GetLinuxWebAppSiteConfigAutoHealSetting({
    required this.actions,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'triggers': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigAutoHealSettingTrigger, Map<String, dynamic>>(triggers, (value) => value.toMap()),
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSetting.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSetting(
      actions: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingAction>(map['actions'], (value) => GetLinuxWebAppSiteConfigAutoHealSettingAction.fromMap((value as Map).cast<String, dynamic>())),
      triggers: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigAutoHealSettingTrigger>(map['triggers'], (value) => GetLinuxWebAppSiteConfigAutoHealSettingTrigger.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

