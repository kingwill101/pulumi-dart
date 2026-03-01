// ignore_for_file: unused_element, unnecessary_cast


/// ObjectFieldSelector selects an APIVersioned field of an object.
class ObjectFieldSelectorPatch {
  /// Version of the schema the FieldPath is written in terms of, defaults to "v1".
  final String? apiVersion;
  /// Path of the field to select in the specified API version.
  final String? fieldPath;

  /// Creates a new [ObjectFieldSelectorPatch].
  /// [apiVersion] Version of the schema the FieldPath is written in terms of, defaults to "v1".
  /// [fieldPath] Path of the field to select in the specified API version.
  ObjectFieldSelectorPatch({
    this.apiVersion,
    this.fieldPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'fieldPath': ?fieldPath,
    };
  }

  factory ObjectFieldSelectorPatch.fromMap(Map<String, dynamic> map) {
    return ObjectFieldSelectorPatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
    );
  }
}

