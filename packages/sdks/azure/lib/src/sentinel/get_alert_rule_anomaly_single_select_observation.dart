// ignore_for_file: unused_element, unnecessary_cast


class GetAlertRuleAnomalySingleSelectObservation {
  /// The description of the threshold observation.
  final String description;
  /// The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  final String name;
  /// A list of supported values of the single select observation.
  final List<String> supportedValues;
  /// The value of the threshold observation.
  final String value;

  /// Creates a new [GetAlertRuleAnomalySingleSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [value] The value of the threshold observation.
  GetAlertRuleAnomalySingleSelectObservation({
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
      description: map['description'] as String,
      name: map['name'] as String,
      supportedValues: (map['supportedValues'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}

