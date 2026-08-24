// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupRequireIpList].
  /// [id] The ID of a previously created IP list.
  const AccessGroupRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupRequireIpList.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
