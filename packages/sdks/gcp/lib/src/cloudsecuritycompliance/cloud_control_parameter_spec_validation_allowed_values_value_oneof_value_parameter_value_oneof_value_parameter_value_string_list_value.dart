// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  const CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
