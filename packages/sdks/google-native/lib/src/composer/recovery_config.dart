// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_snapshots_config.dart';

/// The Recovery settings of an environment.
class RecoveryConfig {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final pulumi.Input<ScheduledSnapshotsConfig>? scheduledSnapshotsConfig;

  /// Creates a new [RecoveryConfig].
  /// [scheduledSnapshotsConfig] Optional. The configuration for scheduled snapshot creation mechanism.
  RecoveryConfig({
    this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfig': ?pulumi.Input.mapOptionalInputValue<ScheduledSnapshotsConfig, Map<String, dynamic>>(scheduledSnapshotsConfig, (value) => value.toMap()),
    };
  }

  factory RecoveryConfig.fromMap(Map<String, dynamic> map) {
    return RecoveryConfig(
      scheduledSnapshotsConfig: map['scheduledSnapshotsConfig'] == null ? null : (ScheduledSnapshotsConfig.fromMap((map['scheduledSnapshotsConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

