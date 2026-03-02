// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_input_properties_response.dart';

/// An input object, containing all information associated with the named input. All inputs are contained under a streaming job.
class InputResponse {
  /// Resource Id
  final pulumi.Input<String> id;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<ReferenceInputPropertiesResponse>? properties;
  /// Resource type
  final pulumi.Input<String> type;

  /// Creates a new [InputResponse].
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  /// [type] Resource type
  InputResponse({
    required this.id,
    this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ReferenceInputPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory InputResponse.fromMap(Map<String, dynamic> map) {
    return InputResponse(
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (ReferenceInputPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

