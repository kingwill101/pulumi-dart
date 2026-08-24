// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupExcludeLoginMethod].
  /// [id] The ID of an identity provider.
  const AccessGroupExcludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupExcludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
