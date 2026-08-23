// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseUserSettingOpensearchAcl {
  final pulumi.Input<String> index;
  /// The permission level applied to the ACL. This includes "admin", "consume", "produce", and "produceconsume". "admin" allows for producing and consuming as well as add/delete/update permission for topics. "consume" allows only for reading topic messages. "produce" allows only for writing topic messages. "produceconsume" allows for both reading and writing topic messages.
  final pulumi.Input<String> permission;

  /// Creates a new [DatabaseUserSettingOpensearchAcl].
  /// [index] Required.
  /// [permission] The permission level applied to the ACL. This includes "admin", "consume", "produce", and "produceconsume". "admin" allows for producing and consuming as well as add/delete/update permission for topics. "consume" allows only for reading topic messages. "produce" allows only for writing topic messages. "produceconsume" allows for both reading and writing topic messages.
  const DatabaseUserSettingOpensearchAcl({
    required this.index,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': index,
      'permission': permission,
    };
  }

  factory DatabaseUserSettingOpensearchAcl.fromMap(Map<String, dynamic> map) {
    return DatabaseUserSettingOpensearchAcl(
      index: pulumi.Input.fromValue(map['index'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}
