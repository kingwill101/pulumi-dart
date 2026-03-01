// ignore_for_file: unused_element, unnecessary_cast


/// OutputConfig contains a destination for writing trace data.
class OutputConfigResponse {
  /// The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  final String destination;

  /// Creates a new [OutputConfigResponse].
  /// [destination] The destination for writing trace data. Supported formats include: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  OutputConfigResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
    };
  }

  factory OutputConfigResponse.fromMap(Map<String, dynamic> map) {
    return OutputConfigResponse(
      destination: map['destination'] as String,
    );
  }
}

