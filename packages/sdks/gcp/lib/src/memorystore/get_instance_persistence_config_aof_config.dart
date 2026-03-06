// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePersistenceConfigAofConfig {
  /// Optional. The fsync mode.
  /// Possible values:
  /// NEVER
  /// EVERY_SEC
  /// ALWAYS
  final pulumi.Input<String> appendFsync;

  /// Creates a new [GetInstancePersistenceConfigAofConfig].
  /// [appendFsync] Optional. The fsync mode.
  const GetInstancePersistenceConfigAofConfig({
    required this.appendFsync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendFsync': appendFsync,
    };
  }

  factory GetInstancePersistenceConfigAofConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePersistenceConfigAofConfig(
      appendFsync: pulumi.Input.fromValue(map['appendFsync'] as String),
    );
  }
}

