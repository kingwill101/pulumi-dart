// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyBuiltInMultiSelectObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String>? description;

  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String>? name;

  /// A list of supported values of the single select observation.
  final pulumi.Input<List<String>>? supportedValues;

  /// A list of values of the single select observation.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [AlertRuleAnomalyBuiltInMultiSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [values] A list of values of the single select observation.
  AlertRuleAnomalyBuiltInMultiSelectObservation({
    this.description,
    this.name,
    this.supportedValues,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'supportedValues': ?supportedValues,
      'values': ?values,
    };
  }

  factory AlertRuleAnomalyBuiltInMultiSelectObservation.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertRuleAnomalyBuiltInMultiSelectObservation(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportedValues: (() {
        final guardedValue = map['supportedValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
