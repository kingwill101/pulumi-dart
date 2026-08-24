// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const AccessApplicationPolicyExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
