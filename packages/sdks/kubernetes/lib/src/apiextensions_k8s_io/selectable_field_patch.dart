// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SelectableField specifies the JSON path of a field that may be used with field selectors.
class SelectableFieldPatch {
  /// jsonPath is a simple JSON path which is evaluated against each custom resource to produce a field selector value. Only JSON paths without the array notation are allowed. Must point to a field of type string, boolean or integer. Types with enum values and strings with formats are allowed. If jsonPath refers to absent field in a resource, the jsonPath evaluates to an empty string. Must not point to metdata fields. Required.
  final pulumi.Input<String>? jsonPath;

  /// Creates a new [SelectableFieldPatch].
  /// [jsonPath] jsonPath is a simple JSON path which is evaluated against each custom resource to produce a field selector value. Only JSON paths without the array notation are allowed. Must point to a field of type string, boolean or integer. Types with enum values and strings with formats are allowed. If jsonPath refers to absent field in a resource, the jsonPath evaluates to an empty string. Must not point to metdata fields. Required.
  SelectableFieldPatch({this.jsonPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jsonPath': ?jsonPath};
  }

  factory SelectableFieldPatch.fromMap(Map<String, dynamic> map) {
    return SelectableFieldPatch(
      jsonPath: (() {
        final guardedValue = map['jsonPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
