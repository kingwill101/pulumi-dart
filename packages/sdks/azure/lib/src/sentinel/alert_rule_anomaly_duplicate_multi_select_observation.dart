// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyDuplicateMultiSelectObservation {
  /// The description of the multi select observation.
  final pulumi.Input<String>? description;
  /// The name of the multi select observation.
  final pulumi.Input<String> name;
  /// A list of supported values of the multi select observation.
  final pulumi.Input<List<String>>? supportedValues;
  /// A list of values of the multi select observation.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertRuleAnomalyDuplicateMultiSelectObservation].
  /// [description] The description of the multi select observation.
  /// [name] The name of the multi select observation.
  /// [supportedValues] A list of supported values of the multi select observation.
  /// [values] A list of values of the multi select observation.
  const AlertRuleAnomalyDuplicateMultiSelectObservation({
    this.description,
    required this.name,
    this.supportedValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'supportedValues': ?supportedValues,
      'values': values,
    };
  }

  factory AlertRuleAnomalyDuplicateMultiSelectObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicateMultiSelectObservation(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      supportedValues: (() { final guardedValue = map['supportedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

