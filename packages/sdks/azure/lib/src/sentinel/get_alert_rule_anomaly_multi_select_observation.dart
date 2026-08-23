// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRuleAnomalyMultiSelectObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String> description;
  /// The guid of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  final pulumi.Input<String> name;
  /// A list of supported values of the single select observation.
  final pulumi.Input<List<String>> supportedValues;
  /// A list of values of the single select observation.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAlertRuleAnomalyMultiSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [values] A list of values of the single select observation.
  const GetAlertRuleAnomalyMultiSelectObservation({
    required this.description,
    required this.name,
    required this.supportedValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'supportedValues': supportedValues,
      'values': values,
    };
  }

  factory GetAlertRuleAnomalyMultiSelectObservation.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyMultiSelectObservation(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      supportedValues: pulumi.Input.fromValue((map['supportedValues'] as List).cast<String>()),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
