// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_regional_persistent_disk_response.dart';

/// A directory to persist across workstation sessions.
class PersistentDirectoryResponse {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  final pulumi.Input<GceRegionalPersistentDiskResponse> gcePd;
  /// Optional. Location of this directory in the running workstation.
  final pulumi.Input<String> mountPath;

  /// Creates a new [PersistentDirectoryResponse].
  /// [gcePd] A PersistentDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Optional. Location of this directory in the running workstation.
  const PersistentDirectoryResponse({
    required this.gcePd,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': pulumi.Input.mapInputValue<GceRegionalPersistentDiskResponse, Map<String, dynamic>>(gcePd, (value) => value.toMap()),
      'mountPath': mountPath,
    };
  }

  factory PersistentDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDirectoryResponse(
      gcePd: pulumi.Input.fromValue(GceRegionalPersistentDiskResponse.fromMap((map['gcePd']! as Map).cast<String, dynamic>())),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}

