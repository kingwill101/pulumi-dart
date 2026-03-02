// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_recovery_config_scheduled_snapshots_config.dart';

class EnvironmentConfigRecoveryConfig {
  /// The configuration settings for scheduled snapshots.
  final pulumi.Input<EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig>? scheduledSnapshotsConfig;

  /// Creates a new [EnvironmentConfigRecoveryConfig].
  /// [scheduledSnapshotsConfig] The configuration settings for scheduled snapshots.
  EnvironmentConfigRecoveryConfig({
    this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig, Map<String, dynamic>>(scheduledSnapshotsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfigRecoveryConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigRecoveryConfig(
      scheduledSnapshotsConfig: map['scheduledSnapshotsConfig'] == null ? null : (EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap((map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

