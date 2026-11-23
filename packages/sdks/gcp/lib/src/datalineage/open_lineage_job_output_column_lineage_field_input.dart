// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_output_column_lineage_field_input_transformation.dart';

class OpenLineageJobOutputColumnLineageFieldInput {
  /// Source field name.
  final pulumi.Input<String> field;
  /// Name of the source dataset.
  final pulumi.Input<String> name;
  /// Namespace of the source dataset.
  final pulumi.Input<String> namespace;
  /// Transformations applied from source to output field.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutputColumnLineageFieldInputTransformation>?>? transformations_;

  /// Creates a new [OpenLineageJobOutputColumnLineageFieldInput].
  /// [field] Source field name.
  /// [name] Name of the source dataset.
  /// [namespace] Namespace of the source dataset.
  /// [transformations_] Transformations applied from source to output field.
  const OpenLineageJobOutputColumnLineageFieldInput({
    required this.field,
    required this.name,
    required this.namespace,
    this.transformations_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'name': name,
      'namespace': namespace,
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobOutputColumnLineageFieldInputTransformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<OpenLineageJobOutputColumnLineageFieldInputTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenLineageJobOutputColumnLineageFieldInput.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutputColumnLineageFieldInput(
      field: pulumi.Input.fromValue(map['field'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutputColumnLineageFieldInputTransformation>(guardedValue, (value) => OpenLineageJobOutputColumnLineageFieldInputTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
