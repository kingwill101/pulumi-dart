// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_selector_requirement_patch.dart';

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
class LabelSelectorPatch {
  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  final pulumi.Input<List<LabelSelectorRequirementPatch>>? matchExpressions;
  /// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  final pulumi.Input<Map<String, String>>? matchLabels;

  /// Creates a new [LabelSelectorPatch].
  /// [matchExpressions] matchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// [matchLabels] matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  LabelSelectorPatch({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<LabelSelectorRequirementPatch>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<LabelSelectorRequirementPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchLabels': ?matchLabels,
    };
  }

  factory LabelSelectorPatch.fromMap(Map<String, dynamic> map) {
    return LabelSelectorPatch(
      matchExpressions: map['matchExpressions'] == null ? null : (pulumi.Input.decodeList<LabelSelectorRequirementPatch>(map['matchExpressions'], (value) => LabelSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchLabels: map['matchLabels'] == null ? null : ((map['matchLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

