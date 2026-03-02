// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_persistent_disk_response.dart';

/// An ephemeral directory which won't persist across workstation sessions. It is freshly created on every workstation start operation.
class EphemeralDirectoryResponse {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  final pulumi.Input<GcePersistentDiskResponse> gcePd;
  /// Location of this directory in the running workstation.
  final pulumi.Input<String> mountPath;

  /// Creates a new [EphemeralDirectoryResponse].
  /// [gcePd] An EphemeralDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Location of this directory in the running workstation.
  EphemeralDirectoryResponse({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': pulumi.Input.mapInputValue<GcePersistentDiskResponse, Map<String, dynamic>>(gcePd, (value) => value.toMap()),
      'mountPath': mountPath,
    };
  }

  factory EphemeralDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return EphemeralDirectoryResponse(
      gcePd: (GcePersistentDiskResponse.fromMap((map['gcePd'] as Map).cast<String, dynamic>())).input(),
      mountPath: (map['mountPath'] as String).input(),
    );
  }
}

