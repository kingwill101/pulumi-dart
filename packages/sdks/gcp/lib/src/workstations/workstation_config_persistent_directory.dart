// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_persistent_directory_gce_pd.dart';

class WorkstationConfigPersistentDirectory {
  /// A directory to persist across workstation sessions, backed by a Compute Engine regional persistent disk. Can only be updated if not empty during creation.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigPersistentDirectoryGcePd>? gcePd;
  /// Location of this directory in the running workstation.
  final pulumi.Input<String>? mountPath;

  /// Creates a new [WorkstationConfigPersistentDirectory].
  /// [gcePd] A directory to persist across workstation sessions, backed by a Compute Engine regional persistent disk. Can only be updated if not empty during creation.
  /// [mountPath] Location of this directory in the running workstation.
  WorkstationConfigPersistentDirectory({
    this.gcePd,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePd': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigPersistentDirectoryGcePd, Map<String, dynamic>>(gcePd, (value) => value.toMap()),
      'mountPath': ?mountPath,
    };
  }

  factory WorkstationConfigPersistentDirectory.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigPersistentDirectory(
      gcePd: map['gcePd'] == null ? null : (WorkstationConfigPersistentDirectoryGcePd.fromMap((map['gcePd'] as Map).cast<String, dynamic>())).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
    );
  }
}

