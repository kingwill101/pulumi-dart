// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_regional_persistent_disk_response_workstations_v1beta.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryResponseWorkstationsV1beta {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final pulumi.Input<GceRegionalPersistentDiskResponseWorkstationsV1beta> gcePd;
  /// Optional. Location of this directory in the running workstation.
  final pulumi.Input<String> mountPath;

  /// Creates a new [PersistentDirectoryResponseWorkstationsV1beta].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  PersistentDirectoryResponseWorkstationsV1beta({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': pulumi.Input.mapInputValue<GceRegionalPersistentDiskResponseWorkstationsV1beta, Map<String, dynamic>>(gcePd, (value) => value.toMap()),
      'mountPath': mountPath,
    };
  }

  factory PersistentDirectoryResponseWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return PersistentDirectoryResponseWorkstationsV1beta(
      gcePd: pulumi.Input.fromValue(GceRegionalPersistentDiskResponseWorkstationsV1beta.fromMap((map['gcePd']! as Map).cast<String, dynamic>())),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}

