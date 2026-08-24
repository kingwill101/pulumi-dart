// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const AccessPolicyExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyExcludeIpList.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
