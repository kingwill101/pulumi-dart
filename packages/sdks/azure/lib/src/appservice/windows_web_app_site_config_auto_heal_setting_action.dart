// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_site_config_auto_heal_setting_action_custom_action.dart';

class WindowsWebAppSiteConfigAutoHealSettingAction {
  /// Predefined action to be taken to an Auto Heal trigger. Possible values include: `Recycle`, `LogEvent`, and `CustomAction`.
  final pulumi.Input<String> actionType;
  /// A `customAction` block as defined below.
  final pulumi.Input<WindowsWebAppSiteConfigAutoHealSettingActionCustomAction>? customAction;
  /// The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
  final pulumi.Input<String>? minimumProcessExecutionTime;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSettingAction].
  /// [actionType] Predefined action to be taken to an Auto Heal trigger. Possible values include: `Recycle`, `LogEvent`, and `CustomAction`.
  /// [customAction] A `customAction` block as defined below.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
  const WindowsWebAppSiteConfigAutoHealSettingAction({
    required this.actionType,
    this.customAction,
    this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'customAction': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSiteConfigAutoHealSettingActionCustomAction, Map<String, dynamic>>(customAction, (value) => value.toMap()),
      'minimumProcessExecutionTime': ?minimumProcessExecutionTime,
    };
  }

  factory WindowsWebAppSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigAutoHealSettingAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      customAction: (() { final guardedValue = map['customAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSiteConfigAutoHealSettingActionCustomAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minimumProcessExecutionTime: (() { final guardedValue = map['minimumProcessExecutionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
