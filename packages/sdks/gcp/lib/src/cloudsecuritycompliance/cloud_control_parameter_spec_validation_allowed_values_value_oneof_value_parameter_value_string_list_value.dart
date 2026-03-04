// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
