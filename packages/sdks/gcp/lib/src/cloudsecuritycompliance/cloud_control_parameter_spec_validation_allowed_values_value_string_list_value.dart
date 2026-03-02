// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecValidationAllowedValuesValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecValidationAllowedValuesValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueStringListValue(
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

