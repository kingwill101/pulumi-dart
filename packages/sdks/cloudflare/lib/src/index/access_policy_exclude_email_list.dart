// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const AccessPolicyExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
