// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ObjectFieldSelector selects an APIVersioned field of an object.
class ObjectFieldSelector {
  /// Version of the schema the FieldPath is written in terms of, defaults to "v1".
  final pulumi.Input<String>? apiVersion;
  /// Path of the field to select in the specified API version.
  final pulumi.Input<String> fieldPath;

  /// Creates a new [ObjectFieldSelector].
  /// [apiVersion] Version of the schema the FieldPath is written in terms of, defaults to "v1".
  /// [fieldPath] Path of the field to select in the specified API version.
  const ObjectFieldSelector({
    this.apiVersion,
    required this.fieldPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'fieldPath': fieldPath,
    };
  }

  factory ObjectFieldSelector.fromMap(Map<String, dynamic> map) {
    return ObjectFieldSelector(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldPath: pulumi.Input.fromValue(map['fieldPath'] as String),
    );
  }
}
