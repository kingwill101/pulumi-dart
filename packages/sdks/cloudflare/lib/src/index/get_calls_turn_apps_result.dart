// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCallsTurnAppsResult {
  /// The date and time the item was created.
  final pulumi.Input<String> created;
  /// The date and time the item was last modified.
  final pulumi.Input<String> modified;
  /// A short description of Calls app, not shown to end users.
  final pulumi.Input<String> name;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String> uid;

  /// Creates a new [GetCallsTurnAppsResult].
  /// [created] The date and time the item was created.
  /// [modified] The date and time the item was last modified.
  /// [name] A short description of Calls app, not shown to end users.
  /// [uid] A Cloudflare-generated unique identifier for a item.
  const GetCallsTurnAppsResult({
    required this.created,
    required this.modified,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'modified': modified,
      'name': name,
      'uid': uid,
    };
  }

  factory GetCallsTurnAppsResult.fromMap(Map<String, dynamic> map) {
    return GetCallsTurnAppsResult(
      created: pulumi.Input.fromValue(map['created'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
