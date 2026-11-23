// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_output_column_lineage_dataset_input.dart';
import 'open_lineage_job_output_column_lineage_field.dart';

class OpenLineageJobOutputColumnLineage {
  /// Input fields participating in output dataset lineage.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutputColumnLineageDatasetInput>?>? datasetInputs;
  /// Field-level lineage mappings.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutputColumnLineageField>> fields;

  /// Creates a new [OpenLineageJobOutputColumnLineage].
  /// [datasetInputs] Input fields participating in output dataset lineage.
  /// [fields] Field-level lineage mappings.
  const OpenLineageJobOutputColumnLineage({
    this.datasetInputs,
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetInputs': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobOutputColumnLineageDatasetInput>, List<Map<String, dynamic>>>(datasetInputs, (value) => pulumi.Input.encodeList<OpenLineageJobOutputColumnLineageDatasetInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fields': pulumi.Input.mapInputValue<List<OpenLineageJobOutputColumnLineageField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<OpenLineageJobOutputColumnLineageField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenLineageJobOutputColumnLineage.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutputColumnLineage(
      datasetInputs: (() { final guardedValue = map['datasetInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutputColumnLineageDatasetInput>(guardedValue, (value) => OpenLineageJobOutputColumnLineageDatasetInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutputColumnLineageField>(map['fields']!, (value) => OpenLineageJobOutputColumnLineageField.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
