// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_snapshots_config_response_composer_v1beta1.dart';

/// The Recovery settings of an environment.
class RecoveryConfigResponseComposerV1beta1 {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final pulumi.Input<ScheduledSnapshotsConfigResponseComposerV1beta1> scheduledSnapshotsConfig;

  /// Creates a new [RecoveryConfigResponseComposerV1beta1].
  /// [scheduledSnapshotsConfig] Optional. The configuration for scheduled snapshot creation mechanism.
  RecoveryConfigResponseComposerV1beta1({
    required this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfig': pulumi.Input.mapInputValue<ScheduledSnapshotsConfigResponseComposerV1beta1, Map<String, dynamic>>(scheduledSnapshotsConfig, (value) => value.toMap()),
    };
  }

  factory RecoveryConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return RecoveryConfigResponseComposerV1beta1(
      scheduledSnapshotsConfig: pulumi.Input.fromValue(ScheduledSnapshotsConfigResponseComposerV1beta1.fromMap((map['scheduledSnapshotsConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

