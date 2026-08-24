// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessPolicyIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
