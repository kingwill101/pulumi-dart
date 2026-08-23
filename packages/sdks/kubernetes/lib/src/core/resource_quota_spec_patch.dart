// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_selector_patch.dart';

/// ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
class ResourceQuotaSpecPatch {
  /// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  final pulumi.Input<Map<String, String>>? hard;
  /// scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
  final pulumi.Input<ScopeSelectorPatch>? scopeSelector;
  /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ResourceQuotaSpecPatch].
  /// [hard] hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  /// [scopeSelector] scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
  /// [scopes] A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  const ResourceQuotaSpecPatch({
    this.hard,
    this.scopeSelector,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hard': ?hard,
      'scopeSelector': ?pulumi.Input.mapOptionalInputValue<ScopeSelectorPatch, Map<String, dynamic>>(scopeSelector, (value) => value.toMap()),
      'scopes': ?scopes,
    };
  }

  factory ResourceQuotaSpecPatch.fromMap(Map<String, dynamic> map) {
    return ResourceQuotaSpecPatch(
      hard: (() { final guardedValue = map['hard']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scopeSelector: (() { final guardedValue = map['scopeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
