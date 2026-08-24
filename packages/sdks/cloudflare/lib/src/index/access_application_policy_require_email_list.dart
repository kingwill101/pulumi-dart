// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyRequireEmailList].
  /// [id] The ID of a previously created email list.
  const AccessApplicationPolicyRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyRequireEmailList.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
