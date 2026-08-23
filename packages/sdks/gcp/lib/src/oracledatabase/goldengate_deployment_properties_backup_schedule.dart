// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesBackupSchedule {
  /// (Output)
  /// The timestamp of when the backup was scheduled.
  final pulumi.Input<String>? backupScheduledTime;
  /// (Output)
  /// The bucket name.
  final pulumi.Input<String>? bucket;
  /// (Output)
  /// The compartment id.
  final pulumi.Input<String>? compartmentId;
  /// (Output)
  /// The frequency backup scheduled.
  /// Possible values:
  /// DAILY
  /// WEEKLY
  /// MONTHLY
  final pulumi.Input<String>? frequencyBackupScheduled;
  /// (Output)
  /// If metadata only.
  final pulumi.Input<bool>? metadataOnly;
  /// (Output)
  /// The namespace name.
  final pulumi.Input<String>? namespace;

  /// Creates a new [GoldengateDeploymentPropertiesBackupSchedule].
  /// [backupScheduledTime] (Output)
  /// [bucket] (Output)
  /// [compartmentId] (Output)
  /// [frequencyBackupScheduled] (Output)
  /// [metadataOnly] (Output)
  /// [namespace] (Output)
  const GoldengateDeploymentPropertiesBackupSchedule({
    this.backupScheduledTime,
    this.bucket,
    this.compartmentId,
    this.frequencyBackupScheduled,
    this.metadataOnly,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupScheduledTime': ?backupScheduledTime,
      'bucket': ?bucket,
      'compartmentId': ?compartmentId,
      'frequencyBackupScheduled': ?frequencyBackupScheduled,
      'metadataOnly': ?metadataOnly,
      'namespace': ?namespace,
    };
  }

  factory GoldengateDeploymentPropertiesBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesBackupSchedule(
      backupScheduledTime: (() { final guardedValue = map['backupScheduledTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compartmentId: (() { final guardedValue = map['compartmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequencyBackupScheduled: (() { final guardedValue = map['frequencyBackupScheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataOnly: (() { final guardedValue = map['metadataOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
