// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupRequireGroup].
  /// [id] The ID of a previously created Access group.
  const AccessGroupRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupRequireGroup.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
