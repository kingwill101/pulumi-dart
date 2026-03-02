// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDatabase {
  /// Database character set. Changing this creates a
  /// new instance.
  final pulumi.Input<String>? charset;
  /// Database collation. Changing this creates a new instance.
  final pulumi.Input<String>? collate;
  /// Database to be created on new instance. Changing this creates a
  /// new instance.
  final pulumi.Input<String> name;

  /// Creates a new [InstanceDatabase].
  /// [charset] Database character set. Changing this creates a
  /// [collate] Database collation. Changing this creates a new instance.
  /// [name] Database to be created on new instance. Changing this creates a
  InstanceDatabase({
    this.charset,
    this.collate,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collate': ?collate,
      'name': name,
    };
  }

  factory InstanceDatabase.fromMap(Map<String, dynamic> map) {
    return InstanceDatabase(
      charset: map['charset'] == null ? null : (map['charset']! as String).input(),
      collate: map['collate'] == null ? null : (map['collate']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

