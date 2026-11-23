// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_account_scope.dart';
import 'tag_condition.dart';

class RoleAccountRule {
  /// Apply to every entity of this type in the organization. Exactly one of `all`, `id`, or `tags` must be set.
  final pulumi.Input<bool?>? all;
  /// Apply to a single entity: a stack's `stackId` (from `getStack`), an environment's `environmentId`, or a cloud account's `insightsAccountId`.
  final pulumi.Input<String?>? id;
  /// Cloud account scopes to grant on the selected accounts.
  final pulumi.Input<List<RbacAccountScope>?>? scopes;
  /// Apply to entities whose tags match every condition.
  final pulumi.Input<List<TagCondition>?>? tags;

  /// Creates a new [RoleAccountRule].
  /// [all] Apply to every entity of this type in the organization. Exactly one of `all`, `id`, or `tags` must be set.
  /// [id] Apply to a single entity: a stack's `stackId` (from `getStack`), an environment's `environmentId`, or a cloud account's `insightsAccountId`.
  /// [scopes] Cloud account scopes to grant on the selected accounts.
  /// [tags] Apply to entities whose tags match every condition.
  const RoleAccountRule({
    this.all,
    this.id,
    this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'id': ?id,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<RbacAccountScope>, List<String>>(scopes, (value) => pulumi.Input.encodeList<RbacAccountScope, String>(value, (value) => value.wireValue)),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagCondition>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoleAccountRule.fromMap(Map<String, dynamic> map) {
    return RoleAccountRule(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RbacAccountScope>(guardedValue, (value) => RbacAccountScope.fromValue(value as String))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagCondition>(guardedValue, (value) => TagCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
