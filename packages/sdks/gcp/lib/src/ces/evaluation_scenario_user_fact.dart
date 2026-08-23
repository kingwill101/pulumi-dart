// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationScenarioUserFact {
  /// The name of the user fact.
  final pulumi.Input<String> name;
  /// The value of the user fact.
  final pulumi.Input<String> value;

  /// Creates a new [EvaluationScenarioUserFact].
  /// [name] The name of the user fact.
  /// [value] The value of the user fact.
  const EvaluationScenarioUserFact({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EvaluationScenarioUserFact.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioUserFact(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
