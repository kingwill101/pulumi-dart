// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_lustre_export_config_start_time.dart';

class AiModelDevelopmentClusterLustreExportConfig {
  /// Days of the week on which a backup runs, each at most once and
  /// none of them DAY_OF_WEEK_UNSPECIFIED. If empty, a backup runs every day.
  final pulumi.Input<List<String>?>? daysOfWeeks;
  /// The Cloud Storage bucket that backups are written to, without
  /// the "gs://" scheme.
  final pulumi.Input<String> destinationBucket;
  /// The Managed Lustre instances to back up, each named as
  /// "projects/{project}/locations/{zone}/instances/{instance}". Every entry
  /// must be attached to one of the cluster's node pools, and no entry may
  /// repeat. If empty, every attached instance is backed up.
  final pulumi.Input<List<String>?>? lustres;
  /// Time when the ModelDevelopmentCluster for the first time entered the
  /// `RUNNING` state.
  final pulumi.Input<AiModelDevelopmentClusterLustreExportConfigStartTime?>? startTime;

  /// Creates a new [AiModelDevelopmentClusterLustreExportConfig].
  /// [daysOfWeeks] Days of the week on which a backup runs, each at most once and
  /// [destinationBucket] The Cloud Storage bucket that backups are written to, without
  /// [lustres] The Managed Lustre instances to back up, each named as
  /// [startTime] Time when the ModelDevelopmentCluster for the first time entered the
  const AiModelDevelopmentClusterLustreExportConfig({
    this.daysOfWeeks,
    required this.destinationBucket,
    this.lustres,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': ?daysOfWeeks,
      'destinationBucket': destinationBucket,
      'lustres': ?lustres,
      'startTime': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterLustreExportConfigStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory AiModelDevelopmentClusterLustreExportConfig.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterLustreExportConfig(
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationBucket: pulumi.Input.fromValue(map['destinationBucket'] as String),
      lustres: (() { final guardedValue = map['lustres']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterLustreExportConfigStartTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
