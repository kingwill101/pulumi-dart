// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_vector_schema_dense_vector.dart';

class CollectionVectorSchema {
  /// Message describing a dense vector field.
  /// Structure is documented below.
  final pulumi.Input<CollectionVectorSchemaDenseVector?>? denseVector;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> fieldName;
  /// Message describing a sparse vector field.
  final pulumi.Input<Map<String, dynamic>?>? sparseVector;

  /// Creates a new [CollectionVectorSchema].
  /// [denseVector] Message describing a dense vector field.
  /// [fieldName] The identifier for this object. Format specified above.
  /// [sparseVector] Message describing a sparse vector field.
  const CollectionVectorSchema({
    this.denseVector,
    required this.fieldName,
    this.sparseVector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denseVector': ?pulumi.Input.mapOptionalInputValue<CollectionVectorSchemaDenseVector, Map<String, dynamic>>(denseVector, (value) => value.toMap()),
      'fieldName': fieldName,
      'sparseVector': ?sparseVector,
    };
  }

  factory CollectionVectorSchema.fromMap(Map<String, dynamic> map) {
    return CollectionVectorSchema(
      denseVector: (() { final guardedValue = map['denseVector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectionVectorSchemaDenseVector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      sparseVector: (() { final guardedValue = map['sparseVector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
