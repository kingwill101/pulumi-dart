// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An input object, containing all information associated with the named input. All inputs are contained under a streaming job.
class InputType {
  /// Resource name
  final pulumi.Input<String?>? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? properties;

  /// Creates a new [InputType].
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  const InputType({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties,
    };
  }

  factory InputType.fromMap(Map<String, dynamic> map) {
    return InputType(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
