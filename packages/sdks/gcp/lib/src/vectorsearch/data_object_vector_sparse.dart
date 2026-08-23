// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataObjectVectorSparse {
  /// The indices corresponding to the entries in `values`. Must
  /// have the same length as `values`.
  final pulumi.Input<List<int>> indices;
  /// The non-zero float values of the sparse vector.
  final pulumi.Input<List<double>> values;

  /// Creates a new [DataObjectVectorSparse].
  /// [indices] The indices corresponding to the entries in `values`. Must
  /// [values] The non-zero float values of the sparse vector.
  const DataObjectVectorSparse({
    required this.indices,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indices': indices,
      'values': values,
    };
  }

  factory DataObjectVectorSparse.fromMap(Map<String, dynamic> map) {
    return DataObjectVectorSparse(
      indices: pulumi.Input.fromValue((map['indices'] as List).cast<int>()),
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}
