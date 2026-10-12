// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  const CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
