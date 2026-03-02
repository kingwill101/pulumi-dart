// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_regional_persistent_disk_workstations_v1beta.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryWorkstationsV1beta {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final pulumi.Input<GceRegionalPersistentDiskWorkstationsV1beta>? gcePd;
  /// Optional. Location of this directory in the running workstation.
  final pulumi.Input<String>? mountPath;

  /// Creates a new [PersistentDirectoryWorkstationsV1beta].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  PersistentDirectoryWorkstationsV1beta({
    this.gcePd,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': ?pulumi.Input.mapOptionalInputValue<GceRegionalPersistentDiskWorkstationsV1beta, Map<String, dynamic>>(gcePd, (value) => value.toMap()),
      'mountPath': ?mountPath,
    };
  }

  factory PersistentDirectoryWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return PersistentDirectoryWorkstationsV1beta(
      gcePd: map['gcePd'] == null ? null : (GceRegionalPersistentDiskWorkstationsV1beta.fromMap((map['gcePd'] as Map).cast<String, dynamic>())).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
    );
  }
}

