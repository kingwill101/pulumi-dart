// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleAnomalyBuiltInSingleSelectObservation {
  /// The description of the threshold observation.
  final String? description;
  /// The Name of the built-in Anomaly Alert Rule.
  final String? name;
  /// A list of supported values of the single select observation.
  final List<String>? supportedValues;
  /// The value of the threshold observation.
  final String? value;

  /// Creates a new [AlertRuleAnomalyBuiltInSingleSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [value] The value of the threshold observation.
  AlertRuleAnomalyBuiltInSingleSelectObservation({
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
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      supportedValues: map['supportedValues'] == null ? null : (map['supportedValues'] as List).cast<String>(),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

