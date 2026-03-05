// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityFeedbackFeedbackContext {
  /// The attribute the user is providing feedback about.
  /// Possible values are: `ATTRIBUTE_ENVIRONMENTS`, `ATTRIBUTE_IP_ADDRESS_RANGES`.
  final pulumi.Input<String> attribute;
  /// The values of the attribute the user is providing feedback about, separated by commas.
  final pulumi.Input<List<String>> values;

  /// Creates a new [SecurityFeedbackFeedbackContext].
  /// [attribute] The attribute the user is providing feedback about.
  /// [values] The values of the attribute the user is providing feedback about, separated by commas.
  SecurityFeedbackFeedbackContext({
    required this.attribute,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'values': values,
    };
  }

  factory SecurityFeedbackFeedbackContext.fromMap(Map<String, dynamic> map) {
    return SecurityFeedbackFeedbackContext(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

