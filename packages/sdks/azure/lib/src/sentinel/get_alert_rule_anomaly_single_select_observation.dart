// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRuleAnomalySingleSelectObservation {
  /// The description of the threshold observation.
  final pulumi.Input<String> description;
  /// The guid of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  final pulumi.Input<String> name;
  /// A list of supported values of the single select observation.
  final pulumi.Input<List<String>> supportedValues;
  /// The value of the threshold observation.
  final pulumi.Input<String> value;

  /// Creates a new [GetAlertRuleAnomalySingleSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [value] The value of the threshold observation.
  const GetAlertRuleAnomalySingleSelectObservation({
    required this.description,
    required this.name,
    required this.supportedValues,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'supportedValues': supportedValues,
      'value': value,
    };
  }

  factory GetAlertRuleAnomalySingleSelectObservation.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalySingleSelectObservation(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      supportedValues: pulumi.Input.fromValue((map['supportedValues'] as List).cast<String>()),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
