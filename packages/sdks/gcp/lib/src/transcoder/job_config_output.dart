// ignore_for_file: unused_element, unnecessary_cast


class JobConfigOutput {
  /// URI for the output file(s). For example, gs://my-bucket/outputs/.
  final String? uri;

  /// Creates a new [JobConfigOutput].
  /// [uri] URI for the output file(s). For example, gs://my-bucket/outputs/.
  JobConfigOutput({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory JobConfigOutput.fromMap(Map<String, dynamic> map) {
    return JobConfigOutput(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

