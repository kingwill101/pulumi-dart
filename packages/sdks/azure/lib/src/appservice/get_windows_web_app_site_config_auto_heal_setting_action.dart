// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_auto_heal_setting_action_custom_action.dart';

class GetWindowsWebAppSiteConfigAutoHealSettingAction {
  /// The predefined action to be taken to an Auto Heal trigger.
  final pulumi.Input<String> actionType;
  /// A `customAction` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction>> customActions;
  /// The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
  final pulumi.Input<String> minimumProcessExecutionTime;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingAction].
  /// [actionType] The predefined action to be taken to an Auto Heal trigger.
  /// [customActions] A `customAction` block as defined below.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
  const GetWindowsWebAppSiteConfigAutoHealSettingAction({
    required this.actionType,
    required this.customActions,
    required this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'customActions': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minimumProcessExecutionTime': minimumProcessExecutionTime,
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      customActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction>(map['customActions']!, (value) => GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction.fromMap((value as Map).cast<String, dynamic>()))),
      minimumProcessExecutionTime: pulumi.Input.fromValue(map['minimumProcessExecutionTime'] as String),
    );
  }
}
