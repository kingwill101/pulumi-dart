// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
class TopologySelectorLabelRequirement {
  /// The label key that the selector applies to.
  final pulumi.Input<String> key;
  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  final pulumi.Input<List<String>> values;

  /// Creates a new [TopologySelectorLabelRequirement].
  /// [key] The label key that the selector applies to.
  /// [values] An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  const TopologySelectorLabelRequirement({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory TopologySelectorLabelRequirement.fromMap(Map<String, dynamic> map) {
    return TopologySelectorLabelRequirement(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

