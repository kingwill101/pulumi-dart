// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseUserSettingAcl {
  /// An identifier for the ACL, this will be automatically assigned when you create an ACL entry
  final pulumi.Input<String>? id;
  /// The permission level applied to the ACL. This includes "admin", "consume", "produce", and "produceconsume". "admin" allows for producing and consuming as well as add/delete/update permission for topics. "consume" allows only for reading topic messages. "produce" allows only for writing topic messages. "produceconsume" allows for both reading and writing topic messages.
  final pulumi.Input<String> permission;
  /// A regex for matching the topic(s) that this ACL should apply to. The regex can assume one of 3 patterns: "*", "&lt;prefix&gt;*", or "&lt;literal&gt;". "*" is a special value indicating a wildcard that matches on all topics. "&lt;prefix&gt;*" defines a regex that matches all topics with the prefix. "&lt;literal&gt;" performs an exact match on a topic name and only applies to that topic.
  final pulumi.Input<String> topic;

  /// Creates a new [DatabaseUserSettingAcl].
  /// [id] An identifier for the ACL, this will be automatically assigned when you create an ACL entry
  /// [permission] The permission level applied to the ACL. This includes "admin", "consume", "produce", and "produceconsume". "admin" allows for producing and consuming as well as add/delete/update permission for topics. "consume" allows only for reading topic messages. "produce" allows only for writing topic messages. "produceconsume" allows for both reading and writing topic messages.
  /// [topic] A regex for matching the topic(s) that this ACL should apply to. The regex can assume one of 3 patterns: "*", "&lt;prefix&gt;*", or "&lt;literal&gt;". "*" is a special value indicating a wildcard that matches on all topics. "&lt;prefix&gt;*" defines a regex that matches all topics with the prefix. "&lt;literal&gt;" performs an exact match on a topic name and only applies to that topic.
  const DatabaseUserSettingAcl({
    this.id,
    required this.permission,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'permission': permission,
      'topic': topic,
    };
  }

  factory DatabaseUserSettingAcl.fromMap(Map<String, dynamic> map) {
    return DatabaseUserSettingAcl(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: pulumi.Input.fromValue(map['permission'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

