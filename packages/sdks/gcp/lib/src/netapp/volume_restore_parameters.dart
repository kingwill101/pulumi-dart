// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeRestoreParameters {
  /// Full name of the backup to use for creating this volume.
  /// `sourceSnapshot` and `sourceBackup` cannot be used simultaneously.
  /// Format: `projects/{{project}}/locations/{{location}}/backupVaults/{{backupVaultId}}/backups/{{backup}}`.
  final pulumi.Input<String>? sourceBackup;
  /// Full name of the snapshot to use for creating this volume.
  /// `sourceSnapshot` and `sourceBackup` cannot be used simultaneously.
  /// Format: `projects/{{project}}/locations/{{location}}/volumes/{{volume}}/snapshots/{{snapshot}}`.
  final pulumi.Input<String>? sourceSnapshot;

  /// Creates a new [VolumeRestoreParameters].
  /// [sourceBackup] Full name of the backup to use for creating this volume.
  /// [sourceSnapshot] Full name of the snapshot to use for creating this volume.
  const VolumeRestoreParameters({
    this.sourceBackup,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceBackup': ?sourceBackup,
      'sourceSnapshot': ?sourceSnapshot,
    };
  }

  factory VolumeRestoreParameters.fromMap(Map<String, dynamic> map) {
    return VolumeRestoreParameters(
      sourceBackup: (() { final guardedValue = map['sourceBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
