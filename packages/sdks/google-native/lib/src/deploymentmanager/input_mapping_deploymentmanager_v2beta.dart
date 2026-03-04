// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_mapping_location_deploymentmanager_v2beta.dart';

/// InputMapping creates a 'virtual' property that will be injected into the properties before sending the request to the underlying API.
class InputMappingDeploymentmanagerV2beta {
  /// The name of the field that is going to be injected.
  final pulumi.Input<String>? fieldName;

  /// The location where this mapping applies.
  final pulumi.Input<InputMappingLocationDeploymentmanagerV2beta>? location;

  /// Regex to evaluate on method to decide if input applies.
  final pulumi.Input<String>? methodMatch;

  /// A jsonPath expression to select an element.
  final pulumi.Input<String>? value;

  /// Creates a new [InputMappingDeploymentmanagerV2beta].
  /// [fieldName] The name of the field that is going to be injected.
  /// [location] The location where this mapping applies.
  /// [methodMatch] Regex to evaluate on method to decide if input applies.
  /// [value] A jsonPath expression to select an element.
  InputMappingDeploymentmanagerV2beta({
    this.fieldName,
    this.location,
    this.methodMatch,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': ?fieldName,
      'location':
          ?pulumi.Input.mapOptionalInputValue<
            InputMappingLocationDeploymentmanagerV2beta,
            String
          >(location, (value) => value.wireValue),
      'methodMatch': ?methodMatch,
      'value': ?value,
    };
  }

  factory InputMappingDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InputMappingDeploymentmanagerV2beta(
      fieldName: (() {
        final guardedValue = map['fieldName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InputMappingLocationDeploymentmanagerV2beta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      methodMatch: (() {
        final guardedValue = map['methodMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
