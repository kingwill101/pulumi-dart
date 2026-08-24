// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMoqRelaysResult {
  final pulumi.Input<String> created;
  final pulumi.Input<String> id;
  final pulumi.Input<String> modified;
  final pulumi.Input<String> name;
  final pulumi.Input<String> uid;

  /// Creates a new [GetMoqRelaysResult].
  /// [created] Required.
  /// [id] Required.
  /// [modified] Required.
  /// [name] Required.
  /// [uid] Required.
  const GetMoqRelaysResult({
    required this.created,
    required this.id,
    required this.modified,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'modified': modified,
      'name': name,
      'uid': uid,
    };
  }

  factory GetMoqRelaysResult.fromMap(Map<String, dynamic> map) {
    return GetMoqRelaysResult(
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
