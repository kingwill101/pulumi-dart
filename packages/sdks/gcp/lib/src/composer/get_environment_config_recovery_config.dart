// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config_recovery_config_scheduled_snapshots_config.dart';

class GetEnvironmentConfigRecoveryConfig {
  /// The configuration settings for scheduled snapshots.
  final pulumi.Input<
    List<GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig>
  >
  scheduledSnapshotsConfigs;

  /// Creates a new [GetEnvironmentConfigRecoveryConfig].
  /// [scheduledSnapshotsConfigs] The configuration settings for scheduled snapshots.
  GetEnvironmentConfigRecoveryConfig({required this.scheduledSnapshotsConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfigs':
          pulumi.Input.mapInputValue<
            List<GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig>,
            List<Map<String, dynamic>>
          >(
            scheduledSnapshotsConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetEnvironmentConfigRecoveryConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigRecoveryConfig(
      scheduledSnapshotsConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig
        >(
          map['scheduledSnapshotsConfigs']!,
          (value) =>
              GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
