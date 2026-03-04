// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linked server Id
class RedisLinkedServerResponse {
  /// Linked server Id.
  final pulumi.Input<String> id;

  /// Creates a new [RedisLinkedServerResponse].
  /// [id] Linked server Id.
  RedisLinkedServerResponse({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory RedisLinkedServerResponse.fromMap(Map<String, dynamic> map) {
    return RedisLinkedServerResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
