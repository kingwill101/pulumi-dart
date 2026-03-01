// ignore_for_file: unused_element, unnecessary_cast

import 'reference_input_properties.dart';

/// An input object, containing all information associated with the named input. All inputs are contained under a streaming job.
class InputType {
  /// Resource name
  final String? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final ReferenceInputProperties? properties;

  /// Creates a new [InputType].
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  InputType({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory InputType.fromMap(Map<String, dynamic> map) {
    return InputType(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : ReferenceInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

