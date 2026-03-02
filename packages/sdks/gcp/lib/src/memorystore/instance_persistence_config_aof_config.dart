// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePersistenceConfigAofConfig {
  /// Optional. The fsync mode.
  /// Possible values:
  /// NEVER
  /// EVERY_SEC
  /// ALWAYS
  final pulumi.Input<String>? appendFsync;

  /// Creates a new [InstancePersistenceConfigAofConfig].
  /// [appendFsync] Optional. The fsync mode.
  InstancePersistenceConfigAofConfig({
    this.appendFsync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendFsync': ?appendFsync,
    };
  }

  factory InstancePersistenceConfigAofConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] == null ? null : (map['appendFsync'] as String).input(),
    );
  }
}

