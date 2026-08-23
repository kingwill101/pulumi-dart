// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataObjectVectorDense {
  /// The float values of the dense vector.
  final pulumi.Input<List<double>> values;

  /// Creates a new [DataObjectVectorDense].
  /// [values] The float values of the dense vector.
  const DataObjectVectorDense({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory DataObjectVectorDense.fromMap(Map<String, dynamic> map) {
    return DataObjectVectorDense(
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}
