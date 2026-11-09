// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_environment_scope.dart';
import 'tag_condition.dart';

class RoleEnvironmentRule {
  /// Apply to every entity of this type in the organization. Exactly one of `all`, `id`, or `tags` must be set.
  final pulumi.Input<bool?>? all;
  /// Apply to a single entity: a stack's `stackId` (from `getStack`), an environment's `environmentId`, or a cloud account's `insightsAccountId`.
  final pulumi.Input<String?>? id;
  /// Environment scopes to grant on the selected environments.
  final pulumi.Input<List<RbacEnvironmentScope>?>? scopes;
  /// Apply to entities whose tags match every condition.
  final pulumi.Input<List<TagCondition>?>? tags;

  /// Creates a new [RoleEnvironmentRule].
  /// [all] Apply to every entity of this type in the organization. Exactly one of `all`, `id`, or `tags` must be set.
  /// [id] Apply to a single entity: a stack's `stackId` (from `getStack`), an environment's `environmentId`, or a cloud account's `insightsAccountId`.
  /// [scopes] Environment scopes to grant on the selected environments.
  /// [tags] Apply to entities whose tags match every condition.
  const RoleEnvironmentRule({
    this.all,
    this.id,
    this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'id': ?id,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<RbacEnvironmentScope>, List<String>>(scopes, (value) => pulumi.Input.encodeList<RbacEnvironmentScope, String>(value, (value) => value.wireValue)),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagCondition>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoleEnvironmentRule.fromMap(Map<String, dynamic> map) {
    return RoleEnvironmentRule(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RbacEnvironmentScope>(guardedValue, (value) => RbacEnvironmentScope.fromValue(value as String))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagCondition>(guardedValue, (value) => TagCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
