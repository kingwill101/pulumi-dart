// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An input object, containing all information associated with the named input. All inputs are contained under a streaming job.
class InputResponse {
  /// Resource Id
  final pulumi.Input<String> id;
  /// Resource name
  final pulumi.Input<String?>? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? properties;
  /// Resource type
  final pulumi.Input<String> type;

  /// Creates a new [InputResponse].
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  /// [type] Resource type
  const InputResponse({
    required this.id,
    this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
      'properties': ?properties,
      'type': type,
    };
  }

  factory InputResponse.fromMap(Map<String, dynamic> map) {
    return InputResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
