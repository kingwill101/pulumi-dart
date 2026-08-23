// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OutputConfig contains a destination for writing trace data.
class OutputConfigResponse {
  /// The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  final pulumi.Input<String> destination;

  /// Creates a new [OutputConfigResponse].
  /// [destination] The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  const OutputConfigResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
    };
  }

  factory OutputConfigResponse.fromMap(Map<String, dynamic> map) {
    return OutputConfigResponse(
      destination: pulumi.Input.fromValue(map['destination'] as String),
    );
  }
}
