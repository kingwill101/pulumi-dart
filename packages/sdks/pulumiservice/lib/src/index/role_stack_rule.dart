// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_stack_scope.dart';
import 'tag_condition.dart';

class RoleStackRule {
  /// Apply to every entity of this type in the organization. Exactly one of `all`, `id`, or `tags` must be set.
  final pulumi.Input<bool?>? all;
  /// Apply to a single entity: a stack's `stackId` (from `getStack`), an environment's `environmentId`, or a cloud account's `insightsAccountId`.
  final pulumi.Input<String?>? id;
  /// Stack scopes to grant on the selected stacks.
  final pulumi.Input<List<RbacStackScope>?>? scopes;
  /// Apply to entities whose tags match every condition.
  final pulumi.Input<List<TagCondition>?>? tags;

  /// Creates a new [RoleStackRule].
  /// [all] Apply to every entity of this type in the organization. Exactly one of `all`, `id`, or `tags` must be set.
  /// [id] Apply to a single entity: a stack's `stackId` (from `getStack`), an environment's `environmentId`, or a cloud account's `insightsAccountId`.
  /// [scopes] Stack scopes to grant on the selected stacks.
  /// [tags] Apply to entities whose tags match every condition.
  const RoleStackRule({
    this.all,
    this.id,
    this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'id': ?id,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<RbacStackScope>, List<String>>(scopes, (value) => pulumi.Input.encodeList<RbacStackScope, String>(value, (value) => value.wireValue)),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagCondition>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoleStackRule.fromMap(Map<String, dynamic> map) {
    return RoleStackRule(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RbacStackScope>(guardedValue, (value) => RbacStackScope.fromValue(value as String))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagCondition>(guardedValue, (value) => TagCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
