// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const AccessPolicyIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
