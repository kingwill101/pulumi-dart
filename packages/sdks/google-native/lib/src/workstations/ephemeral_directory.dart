// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_persistent_disk.dart';

/// An ephemeral directory which won't persist across workstation sessions. It is freshly created on every workstation start operation.
class EphemeralDirectory {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  final pulumi.Input<GcePersistentDisk>? gcePd;

  /// Location of this directory in the running workstation.
  final pulumi.Input<String> mountPath;

  /// Creates a new [EphemeralDirectory].
  /// [gcePd] An EphemeralDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Location of this directory in the running workstation.
  EphemeralDirectory({this.gcePd, required this.mountPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd':
          ?pulumi.Input.mapOptionalInputValue<
            GcePersistentDisk,
            Map<String, dynamic>
          >(gcePd, (value) => value.toMap()),
      'mountPath': mountPath,
    };
  }

  factory EphemeralDirectory.fromMap(Map<String, dynamic> map) {
    return EphemeralDirectory(
      gcePd: (() {
        final guardedValue = map['gcePd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GcePersistentDisk.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}
