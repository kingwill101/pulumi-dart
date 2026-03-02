// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDatastore {
  /// Database engine type to be used in new instance. Changing this
  /// creates a new instance.
  final pulumi.Input<String> type;
  /// Version of database engine type to be used in new instance.
  /// Changing this creates a new instance.
  final pulumi.Input<String> version;

  /// Creates a new [InstanceDatastore].
  /// [type] Database engine type to be used in new instance. Changing this
  /// [version] Version of database engine type to be used in new instance.
  InstanceDatastore({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory InstanceDatastore.fromMap(Map<String, dynamic> map) {
    return InstanceDatastore(
      type: (map['type'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

