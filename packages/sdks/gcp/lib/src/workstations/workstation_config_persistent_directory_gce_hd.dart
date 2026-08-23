// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigPersistentDirectoryGceHd {
  /// How long to wait before converting the disk into a snapshot.
  final pulumi.Input<String>? archiveTimeout;
  /// Whether the persistent disk should be deleted when the workstation is deleted.
  /// Possible values are: `DELETE`, `RETAIN`.
  final pulumi.Input<String>? reclaimPolicy;
  /// The GB capacity of a persistent home directory. Defaults to '200'.
  final pulumi.Input<int>? sizeGb;
  /// Name of the snapshot to use as the source for the disk.
  final pulumi.Input<String>? sourceSnapshot;

  /// Creates a new [WorkstationConfigPersistentDirectoryGceHd].
  /// [archiveTimeout] How long to wait before converting the disk into a snapshot.
  /// [reclaimPolicy] Whether the persistent disk should be deleted when the workstation is deleted.
  /// [sizeGb] The GB capacity of a persistent home directory. Defaults to '200'.
  /// [sourceSnapshot] Name of the snapshot to use as the source for the disk.
  const WorkstationConfigPersistentDirectoryGceHd({
    this.archiveTimeout,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveTimeout': ?archiveTimeout,
      'reclaimPolicy': ?reclaimPolicy,
      'sizeGb': ?sizeGb,
      'sourceSnapshot': ?sourceSnapshot,
    };
  }

  factory WorkstationConfigPersistentDirectoryGceHd.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigPersistentDirectoryGceHd(
      archiveTimeout: (() { final guardedValue = map['archiveTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reclaimPolicy: (() { final guardedValue = map['reclaimPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
