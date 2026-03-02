// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_selector.dart';

/// ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
class ResourceQuotaSpec {
  /// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  final pulumi.Input<Map<String, String>>? hard;
  /// scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
  final pulumi.Input<ScopeSelector>? scopeSelector;
  /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ResourceQuotaSpec].
  /// [hard] hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  /// [scopeSelector] scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
  /// [scopes] A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  ResourceQuotaSpec({
    this.hard,
    this.scopeSelector,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hard': ?hard,
      'scopeSelector': ?pulumi.Input.mapOptionalInputValue<ScopeSelector, Map<String, dynamic>>(scopeSelector, (value) => value.toMap()),
      'scopes': ?scopes,
    };
  }

  factory ResourceQuotaSpec.fromMap(Map<String, dynamic> map) {
    return ResourceQuotaSpec(
      hard: map['hard'] == null ? null : ((map['hard'] as Map).cast<String, String>()).input(),
      scopeSelector: map['scopeSelector'] == null ? null : (ScopeSelector.fromMap((map['scopeSelector'] as Map).cast<String, dynamic>())).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

