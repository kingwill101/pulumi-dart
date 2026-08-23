// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade_component_upgrade.dart';
import 'get_upgrades_upgrade_schedule.dart';

class GetUpgradesUpgrade {
  /// The list of component upgrades.
  final pulumi.Input<List<GetUpgradesUpgradeComponentUpgrade>> componentUpgrades;
  /// Additional information about the private cloud upgrade.
  final pulumi.Input<String> description;
  /// End of the edit window (RFC3339).
  final pulumi.Input<String> endTime;
  /// The estimated total duration of the upgrade in seconds. This information can be used to plan or schedule upgrades to minimize disruptions. Please note that the estimated duration is only an estimate. The actual upgrade duration may vary. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String> estimatedDuration;
  /// The resource name of the specific Upgrade to retrieve. If provided, the 'upgrades' list will contain only this upgrade.
  final pulumi.Input<String> name;
  /// Schedule details for the upgrade.
  final pulumi.Input<List<GetUpgradesUpgradeSchedule>> schedules;
  /// The start version of the private cloud for this upgrade.
  final pulumi.Input<String> startVersion;
  /// Component's upgrade state.
  final pulumi.Input<String> state;
  /// The targeted version of the private cloud at the end of the upgrade.
  final pulumi.Input<String> targetVersion;
  /// The type of upgrade. Possible values include: `VSPHERE_UPGRADE`, `VSPHERE_PATCH`, `WORKAROUND`, `FIRMWARE_UPGRADE`, `SWITCH_UPGRADE`, `OTHER`, `INFRASTRUCTURE_UPGRADE`.
  final pulumi.Input<String> type;

  /// Creates a new [GetUpgradesUpgrade].
  /// [componentUpgrades] The list of component upgrades.
  /// [description] Additional information about the private cloud upgrade.
  /// [endTime] End of the edit window (RFC3339).
  /// [estimatedDuration] The estimated total duration of the upgrade in seconds. This information can be used to plan or schedule upgrades to minimize disruptions. Please note that the estimated duration is only an estimate. The actual upgrade duration may vary. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [name] The resource name of the specific Upgrade to retrieve. If provided, the 'upgrades' list will contain only this upgrade.
  /// [schedules] Schedule details for the upgrade.
  /// [startVersion] The start version of the private cloud for this upgrade.
  /// [state] Component's upgrade state.
  /// [targetVersion] The targeted version of the private cloud at the end of the upgrade.
  /// [type] The type of upgrade. Possible values include: `VSPHERE_UPGRADE`, `VSPHERE_PATCH`, `WORKAROUND`, `FIRMWARE_UPGRADE`, `SWITCH_UPGRADE`, `OTHER`, `INFRASTRUCTURE_UPGRADE`.
  const GetUpgradesUpgrade({
    required this.componentUpgrades,
    required this.description,
    required this.endTime,
    required this.estimatedDuration,
    required this.name,
    required this.schedules,
    required this.startVersion,
    required this.state,
    required this.targetVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentUpgrades': pulumi.Input.mapInputValue<List<GetUpgradesUpgradeComponentUpgrade>, List<Map<String, dynamic>>>(componentUpgrades, (value) => pulumi.Input.encodeList<GetUpgradesUpgradeComponentUpgrade, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'endTime': endTime,
      'estimatedDuration': estimatedDuration,
      'name': name,
      'schedules': pulumi.Input.mapInputValue<List<GetUpgradesUpgradeSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetUpgradesUpgradeSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startVersion': startVersion,
      'state': state,
      'targetVersion': targetVersion,
      'type': type,
    };
  }

  factory GetUpgradesUpgrade.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgrade(
      componentUpgrades: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUpgradesUpgradeComponentUpgrade>(map['componentUpgrades']!, (value) => GetUpgradesUpgradeComponentUpgrade.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      estimatedDuration: pulumi.Input.fromValue(map['estimatedDuration'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUpgradesUpgradeSchedule>(map['schedules']!, (value) => GetUpgradesUpgradeSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      startVersion: pulumi.Input.fromValue(map['startVersion'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      targetVersion: pulumi.Input.fromValue(map['targetVersion'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
