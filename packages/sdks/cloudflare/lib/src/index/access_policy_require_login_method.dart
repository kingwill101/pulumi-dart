// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessPolicyRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessPolicyRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
