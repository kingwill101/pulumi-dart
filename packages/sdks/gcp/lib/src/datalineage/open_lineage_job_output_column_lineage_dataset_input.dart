// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_output_column_lineage_dataset_input_transformation.dart';

class OpenLineageJobOutputColumnLineageDatasetInput {
  /// Source field name.
  final pulumi.Input<String> field;
  /// Name of the source dataset.
  final pulumi.Input<String> name;
  /// Namespace of the source dataset.
  final pulumi.Input<String> namespace;
  /// Transformations applied to fields from this input.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutputColumnLineageDatasetInputTransformation>?>? transformations_;

  /// Creates a new [OpenLineageJobOutputColumnLineageDatasetInput].
  /// [field] Source field name.
  /// [name] Name of the source dataset.
  /// [namespace] Namespace of the source dataset.
  /// [transformations_] Transformations applied to fields from this input.
  const OpenLineageJobOutputColumnLineageDatasetInput({
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
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobOutputColumnLineageDatasetInputTransformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<OpenLineageJobOutputColumnLineageDatasetInputTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenLineageJobOutputColumnLineageDatasetInput.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutputColumnLineageDatasetInput(
      field: pulumi.Input.fromValue(map['field'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutputColumnLineageDatasetInputTransformation>(guardedValue, (value) => OpenLineageJobOutputColumnLineageDatasetInputTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
