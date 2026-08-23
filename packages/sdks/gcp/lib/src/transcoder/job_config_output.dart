// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigOutput {
  /// URI for the output file(s). For example, gs://my-bucket/outputs/.
  final pulumi.Input<String>? uri;

  /// Creates a new [JobConfigOutput].
  /// [uri] URI for the output file(s). For example, gs://my-bucket/outputs/.
  const JobConfigOutput({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory JobConfigOutput.fromMap(Map<String, dynamic> map) {
    return JobConfigOutput(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
