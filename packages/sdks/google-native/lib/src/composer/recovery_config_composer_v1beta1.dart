// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_snapshots_config_composer_v1beta1.dart';

/// The Recovery settings of an environment.
class RecoveryConfigComposerV1beta1 {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final pulumi.Input<ScheduledSnapshotsConfigComposerV1beta1>? scheduledSnapshotsConfig;

  /// Creates a new [RecoveryConfigComposerV1beta1].
  /// [scheduledSnapshotsConfig] Optional. The configuration for scheduled snapshot creation mechanism.
  const RecoveryConfigComposerV1beta1({
    this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfig': ?pulumi.Input.mapOptionalInputValue<ScheduledSnapshotsConfigComposerV1beta1, Map<String, dynamic>>(scheduledSnapshotsConfig, (value) => value.toMap()),
    };
  }

  factory RecoveryConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return RecoveryConfigComposerV1beta1(
      scheduledSnapshotsConfig: (() { final guardedValue = map['scheduledSnapshotsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledSnapshotsConfigComposerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

