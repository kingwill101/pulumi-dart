// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_cleanup_policy_condition.dart';
import 'repository_cleanup_policy_most_recent_versions.dart';

class RepositoryCleanupPolicy {
  /// Policy action.
  /// Possible values are: `DELETE`, `KEEP`.
  final pulumi.Input<String>? action;
  /// Policy condition for matching versions.
  /// Structure is documented below.
  final pulumi.Input<RepositoryCleanupPolicyCondition>? condition;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;
  /// Policy condition for retaining a minimum number of versions. May only be
  /// specified with a Keep action.
  /// Structure is documented below.
  final pulumi.Input<RepositoryCleanupPolicyMostRecentVersions>? mostRecentVersions;

  /// Creates a new [RepositoryCleanupPolicy].
  /// [action] Policy action.
  /// [condition] Policy condition for matching versions.
  /// [id] The identifier for this object. Format specified above.
  /// [mostRecentVersions] Policy condition for retaining a minimum number of versions. May only be
  const RepositoryCleanupPolicy({
    this.action,
    this.condition,
    required this.id,
    this.mostRecentVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'condition': ?pulumi.Input.mapOptionalInputValue<RepositoryCleanupPolicyCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'id': id,
      'mostRecentVersions': ?pulumi.Input.mapOptionalInputValue<RepositoryCleanupPolicyMostRecentVersions, Map<String, dynamic>>(mostRecentVersions, (value) => value.toMap()),
    };
  }

  factory RepositoryCleanupPolicy.fromMap(Map<String, dynamic> map) {
    return RepositoryCleanupPolicy(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryCleanupPolicyCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      mostRecentVersions: (() { final guardedValue = map['mostRecentVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryCleanupPolicyMostRecentVersions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
