// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyBuiltInSingleSelectObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String?>? description;
  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String?>? name;
  /// A list of supported values of the single select observation.
  final pulumi.Input<List<String>?>? supportedValues;
  /// The value of the threshold observation.
  final pulumi.Input<String?>? value;

  /// Creates a new [AlertRuleAnomalyBuiltInSingleSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [value] The value of the threshold observation.
  const AlertRuleAnomalyBuiltInSingleSelectObservation({
    this.description,
    this.name,
    this.supportedValues,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'supportedValues': ?supportedValues,
      'value': ?value,
    };
  }

  factory AlertRuleAnomalyBuiltInSingleSelectObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInSingleSelectObservation(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedValues: (() { final guardedValue = map['supportedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
