// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyExcludeLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessApplicationPolicyExcludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyExcludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
