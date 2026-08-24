// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const AccessApplicationPolicyIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
