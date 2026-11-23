// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_output_column_lineage_field_input.dart';

class OpenLineageJobOutputColumnLineageField {
  /// Input fields contributing to this output field.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutputColumnLineageFieldInput>> inputs;
  /// Output field name.
  final pulumi.Input<String> name;

  /// Creates a new [OpenLineageJobOutputColumnLineageField].
  /// [inputs] Input fields contributing to this output field.
  /// [name] Output field name.
  const OpenLineageJobOutputColumnLineageField({
    required this.inputs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': pulumi.Input.mapInputValue<List<OpenLineageJobOutputColumnLineageFieldInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<OpenLineageJobOutputColumnLineageFieldInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory OpenLineageJobOutputColumnLineageField.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutputColumnLineageField(
      inputs: pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutputColumnLineageFieldInput>(map['inputs']!, (value) => OpenLineageJobOutputColumnLineageFieldInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
