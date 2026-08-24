// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [AccessGroupExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const AccessGroupExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessGroupExcludeIpList.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
