// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationDatastore {
  /// Database engine type to be used with this configuration. Changing this creates a new resource.
  final pulumi.Input<String> type;
  /// Version of database engine type to be used with this configuration. Changing this creates a new resource.
  final pulumi.Input<String> version;

  /// Creates a new [ConfigurationDatastore].
  /// [type] Database engine type to be used with this configuration. Changing this creates a new resource.
  /// [version] Version of database engine type to be used with this configuration. Changing this creates a new resource.
  ConfigurationDatastore({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory ConfigurationDatastore.fromMap(Map<String, dynamic> map) {
    return ConfigurationDatastore(
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

