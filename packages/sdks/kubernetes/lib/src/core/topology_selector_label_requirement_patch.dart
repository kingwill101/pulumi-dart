// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
class TopologySelectorLabelRequirementPatch {
  /// The label key that the selector applies to.
  final pulumi.Input<String>? key;

  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [TopologySelectorLabelRequirementPatch].
  /// [key] The label key that the selector applies to.
  /// [values] An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  TopologySelectorLabelRequirementPatch({this.key, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'values': ?values};
  }

  factory TopologySelectorLabelRequirementPatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return TopologySelectorLabelRequirementPatch(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
