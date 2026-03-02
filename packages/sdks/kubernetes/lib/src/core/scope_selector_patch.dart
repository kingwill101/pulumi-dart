// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scoped_resource_selector_requirement_patch.dart';

/// A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
class ScopeSelectorPatch {
  /// A list of scope selector requirements by scope of the resources.
  final pulumi.Input<List<ScopedResourceSelectorRequirementPatch>>? matchExpressions;

  /// Creates a new [ScopeSelectorPatch].
  /// [matchExpressions] A list of scope selector requirements by scope of the resources.
  ScopeSelectorPatch({
    this.matchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<ScopedResourceSelectorRequirementPatch>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<ScopedResourceSelectorRequirementPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScopeSelectorPatch.fromMap(Map<String, dynamic> map) {
    return ScopeSelectorPatch(
      matchExpressions: map['matchExpressions'] == null ? null : (pulumi.Input.decodeList<ScopedResourceSelectorRequirementPatch>(map['matchExpressions'], (value) => ScopedResourceSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

