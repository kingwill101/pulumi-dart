// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
class LocalObjectReferencePatch {
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String?>? name;

  /// Creates a new [LocalObjectReferencePatch].
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  const LocalObjectReferencePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory LocalObjectReferencePatch.fromMap(Map<String, dynamic> map) {
    return LocalObjectReferencePatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
