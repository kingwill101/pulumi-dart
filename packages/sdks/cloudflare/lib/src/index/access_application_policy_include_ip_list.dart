// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const AccessApplicationPolicyIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyIncludeIpList.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
