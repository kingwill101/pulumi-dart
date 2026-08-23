// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_auto_upgrade_config_rollout_creation_scope.dart';

class RolloutSequenceAutoUpgradeConfig {
  /// Specifies the scope of automation for the creation of rollouts.
  /// Represents the types of rollouts (version upgrades) the sequence should
  /// initiate automatically.
  /// If this field is not specified, it defaults to all types.
  /// If this field is specified, but the nested upgradeTypes field is empty,
  /// most automatic rollouts are disabled for this sequence.
  /// Exceptions are rollouts enforcing our security policies (e.g. such as
  /// end-of-support and outdated control plane patch enforcements).
  /// These policy enforcements cannot be disabled.
  /// Structure is documented below.
  final pulumi.Input<RolloutSequenceAutoUpgradeConfigRolloutCreationScope>? rolloutCreationScope;

  /// Creates a new [RolloutSequenceAutoUpgradeConfig].
  /// [rolloutCreationScope] Specifies the scope of automation for the creation of rollouts.
  const RolloutSequenceAutoUpgradeConfig({
    this.rolloutCreationScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutCreationScope': ?pulumi.Input.mapOptionalInputValue<RolloutSequenceAutoUpgradeConfigRolloutCreationScope, Map<String, dynamic>>(rolloutCreationScope, (value) => value.toMap()),
    };
  }

  factory RolloutSequenceAutoUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceAutoUpgradeConfig(
      rolloutCreationScope: (() { final guardedValue = map['rolloutCreationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutSequenceAutoUpgradeConfigRolloutCreationScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
