// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_slot_site_config_auto_heal_setting_action_custom_action.dart';

class WindowsWebAppSlotSiteConfigAutoHealSettingAction {
  /// Predefined action to be taken to an Auto Heal trigger. Possible values are `CustomAction`, `LogEvent` and `Recycle`.
  final String actionType;
  /// A `custom_action` block as defined below.
  final WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction? customAction;
  /// The minimum amount of time in `hh:mm:ss` the Windows Web App Slot must have been running before the defined action will be run in the event of a trigger.
  final String? minimumProcessExecutionTime;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSettingAction].
  /// [actionType] Predefined action to be taken to an Auto Heal trigger. Possible values are `CustomAction`, `LogEvent` and `Recycle`.
  /// [customAction] A `custom_action` block as defined below.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Windows Web App Slot must have been running before the defined action will be run in the event of a trigger.
  WindowsWebAppSlotSiteConfigAutoHealSettingAction({
    required this.actionType,
    this.customAction,
    this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'customAction': ?customAction == null ? null : customAction!.toMap(),
      'minimumProcessExecutionTime': ?minimumProcessExecutionTime,
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigAutoHealSettingAction(
      actionType: map['actionType'] as String,
      customAction: map['customAction'] == null ? null : WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction.fromMap((map['customAction'] as Map).cast<String, dynamic>()),
      minimumProcessExecutionTime: map['minimumProcessExecutionTime'] == null ? null : map['minimumProcessExecutionTime'] as String,
    );
  }
}

