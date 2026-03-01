// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleAnomalyDuplicateMultiSelectObservation {
  /// The description of the multi select observation.
  final String? description;
  /// The name of the multi select observation.
  final String name;
  /// A list of supported values of the multi select observation.
  final List<String>? supportedValues;
  /// A list of values of the multi select observation.
  final List<String> values;

  /// Creates a new [AlertRuleAnomalyDuplicateMultiSelectObservation].
  /// [description] The description of the multi select observation.
  /// [name] The name of the multi select observation.
  /// [supportedValues] A list of supported values of the multi select observation.
  /// [values] A list of values of the multi select observation.
  AlertRuleAnomalyDuplicateMultiSelectObservation({
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
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      supportedValues: map['supportedValues'] == null ? null : (map['supportedValues'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

