// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterSubParameterDefaultValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterDefaultValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  const CloudControlParameterSpecSubParameterSubParameterDefaultValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterDefaultValueOneofValueParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterDefaultValueOneofValueParameterValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
