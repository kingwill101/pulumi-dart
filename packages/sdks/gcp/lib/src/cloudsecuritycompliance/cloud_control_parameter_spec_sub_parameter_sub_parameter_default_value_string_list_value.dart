// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterSubParameterDefaultValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterDefaultValueStringListValue].
  /// [values] The strings in the list.
  const CloudControlParameterSpecSubParameterSubParameterDefaultValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterDefaultValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterDefaultValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
