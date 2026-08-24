// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyRequireIpList].
  /// [id] The ID of a previously created IP list.
  const AccessApplicationPolicyRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyRequireIpList.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
