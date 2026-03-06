// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPersistenceConfigAofConfig {
  /// Optional. Available fsync modes.
  /// - NO - Do not explicitly call fsync(). Rely on OS defaults.
  /// - EVERYSEC - Call fsync() once per second in a background thread. A balance between performance and durability.
  /// - ALWAYS - Call fsync() for earch write command.
  /// Possible values are: `APPEND_FSYNC_UNSPECIFIED`, `NO`, `EVERYSEC`, `ALWAYS`.
  final pulumi.Input<String>? appendFsync;

  /// Creates a new [ClusterPersistenceConfigAofConfig].
  /// [appendFsync] Optional. Available fsync modes.
  const ClusterPersistenceConfigAofConfig({
    this.appendFsync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendFsync': ?appendFsync,
    };
  }

  factory ClusterPersistenceConfigAofConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPersistenceConfigAofConfig(
      appendFsync: (() { final guardedValue = map['appendFsync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

