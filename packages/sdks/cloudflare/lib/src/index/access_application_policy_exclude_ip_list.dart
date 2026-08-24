// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const AccessApplicationPolicyExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyExcludeIpList.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
