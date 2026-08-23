// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteConfigAutoHealSettingAction {
  /// The predefined action to be taken to an Auto Heal trigger.
  final pulumi.Input<String> actionType;
  /// The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
  final pulumi.Input<String> minimumProcessExecutionTime;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingAction].
  /// [actionType] The predefined action to be taken to an Auto Heal trigger.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
  const GetLinuxWebAppSiteConfigAutoHealSettingAction({
    required this.actionType,
    required this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'minimumProcessExecutionTime': minimumProcessExecutionTime,
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      minimumProcessExecutionTime: pulumi.Input.fromValue(map['minimumProcessExecutionTime'] as String),
    );
  }
}
