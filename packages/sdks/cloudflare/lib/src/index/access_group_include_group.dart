// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const AccessGroupIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupIncludeGroup.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
