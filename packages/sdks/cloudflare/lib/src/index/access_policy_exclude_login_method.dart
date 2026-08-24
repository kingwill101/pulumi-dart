// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyExcludeLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessPolicyExcludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyExcludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
