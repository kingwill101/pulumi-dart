// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessApplicationPolicyIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
