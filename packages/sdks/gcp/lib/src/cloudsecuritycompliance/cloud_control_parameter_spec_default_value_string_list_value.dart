// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecDefaultValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecDefaultValueStringListValue].
  /// [values] The strings in the list.
  const CloudControlParameterSpecDefaultValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecDefaultValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecDefaultValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
