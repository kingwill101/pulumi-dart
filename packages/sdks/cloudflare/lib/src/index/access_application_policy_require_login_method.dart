// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessApplicationPolicyRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
