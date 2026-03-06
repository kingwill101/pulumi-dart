// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InputMapping creates a 'virtual' property that will be injected into the properties before sending the request to the underlying API.
class InputMappingResponse {
  /// The name of the field that is going to be injected.
  final pulumi.Input<String> fieldName;
  /// The location where this mapping applies.
  final pulumi.Input<String> location;
  /// Regex to evaluate on method to decide if input applies.
  final pulumi.Input<String> methodMatch;
  /// A jsonPath expression to select an element.
  final pulumi.Input<String> value;

  /// Creates a new [InputMappingResponse].
  /// [fieldName] The name of the field that is going to be injected.
  /// [location] The location where this mapping applies.
  /// [methodMatch] Regex to evaluate on method to decide if input applies.
  /// [value] A jsonPath expression to select an element.
  const InputMappingResponse({
    required this.fieldName,
    required this.location,
    required this.methodMatch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': fieldName,
      'location': location,
      'methodMatch': methodMatch,
      'value': value,
    };
  }

  factory InputMappingResponse.fromMap(Map<String, dynamic> map) {
    return InputMappingResponse(
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      methodMatch: pulumi.Input.fromValue(map['methodMatch'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

