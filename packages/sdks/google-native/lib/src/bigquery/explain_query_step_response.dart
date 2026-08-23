// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExplainQueryStepResponse {
  /// Machine-readable operation type.
  final pulumi.Input<String> kind;
  /// Human-readable stage descriptions.
  final pulumi.Input<List<String>> substeps;

  /// Creates a new [ExplainQueryStepResponse].
  /// [kind] Machine-readable operation type.
  /// [substeps] Human-readable stage descriptions.
  const ExplainQueryStepResponse({
    required this.kind,
    required this.substeps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'substeps': substeps,
    };
  }

  factory ExplainQueryStepResponse.fromMap(Map<String, dynamic> map) {
    return ExplainQueryStepResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      substeps: pulumi.Input.fromValue((map['substeps'] as List).cast<String>()),
    );
  }
}
