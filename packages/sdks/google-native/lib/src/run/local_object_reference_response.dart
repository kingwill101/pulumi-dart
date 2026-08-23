// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Not supported by Cloud Run. LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
class LocalObjectReferenceResponse {
  /// Name of the referent.
  final pulumi.Input<String> name;

  /// Creates a new [LocalObjectReferenceResponse].
  /// [name] Name of the referent.
  const LocalObjectReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LocalObjectReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LocalObjectReferenceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
