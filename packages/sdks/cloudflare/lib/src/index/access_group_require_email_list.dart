// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupRequireEmailList].
  /// [id] The ID of a previously created email list.
  const AccessGroupRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupRequireEmailList.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
