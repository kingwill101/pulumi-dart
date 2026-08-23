// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_object_vector_dense.dart';
import 'data_object_vector_sparse.dart';

class DataObjectVector {
  /// A dense vector.
  /// Structure is documented below.
  final pulumi.Input<DataObjectVectorDense>? dense;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> fieldName;
  /// A sparse vector.
  /// Structure is documented below.
  final pulumi.Input<DataObjectVectorSparse>? sparse;

  /// Creates a new [DataObjectVector].
  /// [dense] A dense vector.
  /// [fieldName] The identifier for this object. Format specified above.
  /// [sparse] A sparse vector.
  const DataObjectVector({
    this.dense,
    required this.fieldName,
    this.sparse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dense': ?pulumi.Input.mapOptionalInputValue<DataObjectVectorDense, Map<String, dynamic>>(dense, (value) => value.toMap()),
      'fieldName': fieldName,
      'sparse': ?pulumi.Input.mapOptionalInputValue<DataObjectVectorSparse, Map<String, dynamic>>(sparse, (value) => value.toMap()),
    };
  }

  factory DataObjectVector.fromMap(Map<String, dynamic> map) {
    return DataObjectVector(
      dense: (() { final guardedValue = map['dense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataObjectVectorDense.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      sparse: (() { final guardedValue = map['sparse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataObjectVectorSparse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
