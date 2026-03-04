// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryVirtualRepositoryConfigUpstreamPolicy {
  /// The user-provided ID of the upstream policy.
  final pulumi.Input<String> id;

  /// Entries with a greater priority value take precedence in the pull order.
  final pulumi.Input<int> priority;

  /// A reference to the repository resource, for example:
  /// "projects/p1/locations/us-central1/repository/repo1".
  final pulumi.Input<String> repository;

  /// Creates a new [GetRepositoryVirtualRepositoryConfigUpstreamPolicy].
  /// [id] The user-provided ID of the upstream policy.
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example:
  GetRepositoryVirtualRepositoryConfigUpstreamPolicy({
    required this.id,
    required this.priority,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'priority': priority,
      'repository': repository,
    };
  }

  factory GetRepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryVirtualRepositoryConfigUpstreamPolicy(
      id: pulumi.Input.fromValue(map['id'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      repository: pulumi.Input.fromValue(map['repository'] as String),
    );
  }
}
