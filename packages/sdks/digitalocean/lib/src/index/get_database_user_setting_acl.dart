// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseUserSettingAcl {
  final pulumi.Input<String> id;
  final pulumi.Input<String> permission;
  final pulumi.Input<String> topic;

  /// Creates a new [GetDatabaseUserSettingAcl].
  /// [id] Required.
  /// [permission] Required.
  /// [topic] Required.
  GetDatabaseUserSettingAcl({
    required this.id,
    required this.permission,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'permission': permission,
      'topic': topic,
    };
  }

  factory GetDatabaseUserSettingAcl.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserSettingAcl(
      id: pulumi.Input.fromValue(map['id'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

