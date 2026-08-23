// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutSequenceAutoUpgradeConfigRolloutCreationScope {
  /// The list of enabled upgrade types.
  /// Current valid values are `CONTROL_PLANE_MINOR`, `CONTROL_PLANE_PATCH`, `NODE_MINOR`, and `NODE_PATCH`.
  final pulumi.Input<List<String>>? upgradeTypes;

  /// Creates a new [RolloutSequenceAutoUpgradeConfigRolloutCreationScope].
  /// [upgradeTypes] The list of enabled upgrade types.
  const RolloutSequenceAutoUpgradeConfigRolloutCreationScope({
    this.upgradeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upgradeTypes': ?upgradeTypes,
    };
  }

  factory RolloutSequenceAutoUpgradeConfigRolloutCreationScope.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceAutoUpgradeConfigRolloutCreationScope(
      upgradeTypes: (() { final guardedValue = map['upgradeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
