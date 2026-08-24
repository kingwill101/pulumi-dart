// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyRequireIpList].
  /// [id] The ID of a previously created IP list.
  const AccessPolicyRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyRequireIpList.fromMap(Map<String, dynamic> map) {
    return AccessPolicyRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
