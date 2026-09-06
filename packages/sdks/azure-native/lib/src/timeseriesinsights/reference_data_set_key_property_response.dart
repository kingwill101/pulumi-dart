// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A key property for the reference data set. A reference data set can have multiple key properties.
class ReferenceDataSetKeyPropertyResponse {
  /// The name of the key property.
  final pulumi.Input<String?>? name;
  /// The type of the key property.
  final pulumi.Input<String?>? type;

  /// Creates a new [ReferenceDataSetKeyPropertyResponse].
  /// [name] The name of the key property.
  /// [type] The type of the key property.
  const ReferenceDataSetKeyPropertyResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ReferenceDataSetKeyPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ReferenceDataSetKeyPropertyResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
