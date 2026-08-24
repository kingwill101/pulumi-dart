// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const AccessGroupExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
