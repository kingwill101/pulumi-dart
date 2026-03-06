// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlRuleCelExpressionResourceTypesValues {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlRuleCelExpressionResourceTypesValues].
  /// [values] The strings in the list.
  const CloudControlRuleCelExpressionResourceTypesValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlRuleCelExpressionResourceTypesValues.fromMap(Map<String, dynamic> map) {
    return CloudControlRuleCelExpressionResourceTypesValues(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

