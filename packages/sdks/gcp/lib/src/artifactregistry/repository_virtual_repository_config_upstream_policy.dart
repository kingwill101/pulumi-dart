// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryVirtualRepositoryConfigUpstreamPolicy {
  /// The user-provided ID of the upstream policy.
  final pulumi.Input<String?>? id;
  /// Entries with a greater priority value take precedence in the pull order.
  final pulumi.Input<int?>? priority;
  /// A reference to the repository resource, for example:
  /// "projects/p1/locations/us-central1/repository/repo1".
  final pulumi.Input<String?>? repository;

  /// Creates a new [RepositoryVirtualRepositoryConfigUpstreamPolicy].
  /// [id] The user-provided ID of the upstream policy.
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example:
  const RepositoryVirtualRepositoryConfigUpstreamPolicy({
    this.id,
    this.priority,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'priority': ?priority,
      'repository': ?repository,
    };
  }

  factory RepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap(Map<String, dynamic> map) {
    return RepositoryVirtualRepositoryConfigUpstreamPolicy(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
