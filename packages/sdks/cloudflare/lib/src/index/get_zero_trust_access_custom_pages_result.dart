// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessCustomPagesResult {
  /// UUID.
  final pulumi.Input<String> id;
  /// Custom page name.
  final pulumi.Input<String> name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden".
  final pulumi.Input<String> type;
  /// UUID.
  final pulumi.Input<String> uid;

  /// Creates a new [GetZeroTrustAccessCustomPagesResult].
  /// [id] UUID.
  /// [name] Custom page name.
  /// [type] Custom page type.
  /// [uid] UUID.
  const GetZeroTrustAccessCustomPagesResult({
    required this.id,
    required this.name,
    required this.type,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'uid': uid,
    };
  }

  factory GetZeroTrustAccessCustomPagesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessCustomPagesResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
