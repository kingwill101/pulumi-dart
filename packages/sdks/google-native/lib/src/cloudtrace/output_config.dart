// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OutputConfig contains a destination for writing trace data.
class OutputConfig {
  /// The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  final pulumi.Input<String>? destination;

  /// Creates a new [OutputConfig].
  /// [destination] The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  OutputConfig({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
    };
  }

  factory OutputConfig.fromMap(Map<String, dynamic> map) {
    return OutputConfig(
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
    );
  }
}

