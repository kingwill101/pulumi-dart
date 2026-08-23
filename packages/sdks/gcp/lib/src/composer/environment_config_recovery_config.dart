// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_recovery_config_scheduled_snapshots_config.dart';

class EnvironmentConfigRecoveryConfig {
  /// The configuration settings for scheduled snapshots.
  final pulumi.Input<EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig>? scheduledSnapshotsConfig;

  /// Creates a new [EnvironmentConfigRecoveryConfig].
  /// [scheduledSnapshotsConfig] The configuration settings for scheduled snapshots.
  const EnvironmentConfigRecoveryConfig({
    this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig, Map<String, dynamic>>(scheduledSnapshotsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfigRecoveryConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigRecoveryConfig(
      scheduledSnapshotsConfig: (() { final guardedValue = map['scheduledSnapshotsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
