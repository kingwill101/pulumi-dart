// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_auto_heal_setting_action_custom_action.dart';

class GetWindowsWebAppSiteConfigAutoHealSettingAction {
  /// The predefined action to be taken to an Auto Heal trigger.
  final String actionType;
  /// A `custom_action` block as defined below.
  final List<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction> customActions;
  /// The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
  final String minimumProcessExecutionTime;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingAction].
  /// [actionType] The predefined action to be taken to an Auto Heal trigger.
  /// [customActions] A `custom_action` block as defined below.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
  GetWindowsWebAppSiteConfigAutoHealSettingAction({
    required this.actionType,
    required this.customActions,
    required this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'customActions': pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction, Map<String, dynamic>>(customActions, (value) => value.toMap()),
      'minimumProcessExecutionTime': minimumProcessExecutionTime,
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingAction(
      actionType: map['actionType'] as String,
      customActions: pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction>(map['customActions'], (value) => GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction.fromMap((value as Map).cast<String, dynamic>())),
      minimumProcessExecutionTime: map['minimumProcessExecutionTime'] as String,
    );
  }
}

