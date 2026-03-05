// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scoped_resource_selector_requirement.dart';

/// A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
class ScopeSelector {
  /// A list of scope selector requirements by scope of the resources.
  final pulumi.Input<List<ScopedResourceSelectorRequirement>>? matchExpressions;

  /// Creates a new [ScopeSelector].
  /// [matchExpressions] A list of scope selector requirements by scope of the resources.
  ScopeSelector({
    this.matchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<ScopedResourceSelectorRequirement>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<ScopedResourceSelectorRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScopeSelector.fromMap(Map<String, dynamic> map) {
    return ScopeSelector(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopedResourceSelectorRequirement>(guardedValue, (value) => ScopedResourceSelectorRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

