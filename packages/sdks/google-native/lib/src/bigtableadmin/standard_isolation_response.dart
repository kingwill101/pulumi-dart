// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Standard options for isolating this app profile's traffic from other use cases.
class StandardIsolationResponse {
  /// The priority of requests sent using this app profile.
  final pulumi.Input<String> priority;

  /// Creates a new [StandardIsolationResponse].
  /// [priority] The priority of requests sent using this app profile.
  StandardIsolationResponse({required this.priority});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'priority': priority};
  }

  factory StandardIsolationResponse.fromMap(Map<String, dynamic> map) {
    return StandardIsolationResponse(
      priority: pulumi.Input.fromValue(map['priority'] as String),
    );
  }
}
