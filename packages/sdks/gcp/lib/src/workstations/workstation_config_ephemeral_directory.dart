// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_ephemeral_directory_gce_pd.dart';

class WorkstationConfigEphemeralDirectory {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigEphemeralDirectoryGcePd>? gcePd;
  /// Location of this directory in the running workstation.
  final pulumi.Input<String>? mountPath;

  /// Creates a new [WorkstationConfigEphemeralDirectory].
  /// [gcePd] An EphemeralDirectory backed by a Compute Engine persistent disk.
  /// [mountPath] Location of this directory in the running workstation.
  WorkstationConfigEphemeralDirectory({
    this.gcePd,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigEphemeralDirectoryGcePd, Map<String, dynamic>>(gcePd, (value) => value.toMap()),
      'mountPath': ?mountPath,
    };
  }

  factory WorkstationConfigEphemeralDirectory.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigEphemeralDirectory(
      gcePd: map['gcePd'] == null ? null : (WorkstationConfigEphemeralDirectoryGcePd.fromMap((map['gcePd'] as Map).cast<String, dynamic>())).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
    );
  }
}

