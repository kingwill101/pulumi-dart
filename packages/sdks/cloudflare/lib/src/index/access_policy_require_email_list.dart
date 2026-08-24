// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyRequireEmailList].
  /// [id] The ID of a previously created email list.
  const AccessPolicyRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyRequireEmailList.fromMap(Map<String, dynamic> map) {
    return AccessPolicyRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
