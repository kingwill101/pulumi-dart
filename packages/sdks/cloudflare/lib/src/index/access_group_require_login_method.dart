// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessGroupRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
