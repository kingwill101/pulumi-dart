// ignore_for_file: unused_element, unnecessary_cast

import 'input_mapping_location.dart';

/// InputMapping creates a 'virtual' property that will be injected into the properties before sending the request to the underlying API.
class InputMapping {
  /// The name of the field that is going to be injected.
  final String? fieldName;
  /// The location where this mapping applies.
  final InputMappingLocation? location;
  /// Regex to evaluate on method to decide if input applies.
  final String? methodMatch;
  /// A jsonPath expression to select an element.
  final String? value;

  /// Creates a new [InputMapping].
  /// [fieldName] The name of the field that is going to be injected.
  /// [location] The location where this mapping applies.
  /// [methodMatch] Regex to evaluate on method to decide if input applies.
  /// [value] A jsonPath expression to select an element.
  InputMapping({
    this.fieldName,
    this.location,
    this.methodMatch,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': ?fieldName,
      'location': ?location == null ? null : location!.value,
      'methodMatch': ?methodMatch,
      'value': ?value,
    };
  }

  factory InputMapping.fromMap(Map<String, dynamic> map) {
    return InputMapping(
      fieldName: map['fieldName'] == null ? null : map['fieldName'] as String,
      location: map['location'] == null ? null : InputMappingLocation.fromValue(map['location'] as String),
      methodMatch: map['methodMatch'] == null ? null : map['methodMatch'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

