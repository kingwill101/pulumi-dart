// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Artifact policy configuration for the repository contents.
class UpstreamPolicyResponse {
  /// Entries with a greater priority value take precedence in the pull order.
  final pulumi.Input<int> priority;
  /// A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final pulumi.Input<String> repository;

  /// Creates a new [UpstreamPolicyResponse].
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  const UpstreamPolicyResponse({
    required this.priority,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'repository': repository,
    };
  }

  factory UpstreamPolicyResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamPolicyResponse(
      priority: pulumi.Input.fromValue(map['priority'] as int),
      repository: pulumi.Input.fromValue(map['repository'] as String),
    );
  }
}

