// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_auto_heal_setting_action.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger.dart';

class GetWindowsWebAppSiteConfigAutoHealSetting {
  /// A `action` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingAction>>
  actions;

  /// A `trigger` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingTrigger>>
  triggers;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSetting].
  /// [actions] A `action` block as defined above.
  /// [triggers] A `trigger` block as defined below.
  GetWindowsWebAppSiteConfigAutoHealSetting({
    required this.actions,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<GetWindowsWebAppSiteConfigAutoHealSettingAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsWebAppSiteConfigAutoHealSettingAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'triggers':
          pulumi.Input.mapInputValue<
            List<GetWindowsWebAppSiteConfigAutoHealSettingTrigger>,
            List<Map<String, dynamic>>
          >(
            triggers,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsWebAppSiteConfigAutoHealSettingTrigger,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsWebAppSiteConfigAutoHealSetting(
      actions: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingAction>(
          map['actions']!,
          (value) => GetWindowsWebAppSiteConfigAutoHealSettingAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      triggers: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTrigger>(
          map['triggers']!,
          (value) => GetWindowsWebAppSiteConfigAutoHealSettingTrigger.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
