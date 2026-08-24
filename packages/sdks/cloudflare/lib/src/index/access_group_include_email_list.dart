// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const AccessGroupIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
