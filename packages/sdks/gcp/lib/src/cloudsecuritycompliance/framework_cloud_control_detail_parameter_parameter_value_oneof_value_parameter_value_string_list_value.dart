// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue(
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

