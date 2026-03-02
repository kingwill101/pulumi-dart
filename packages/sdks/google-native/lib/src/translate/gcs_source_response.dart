// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Google Cloud Storage location for the input content.
class GcsSourceResponse {
  /// Source data URI. For example, `gs://my_bucket/my_object`.
  final pulumi.Input<String> inputUri;

  /// Creates a new [GcsSourceResponse].
  /// [inputUri] Source data URI. For example, `gs://my_bucket/my_object`.
  GcsSourceResponse({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputUri': inputUri,
    };
  }

  factory GcsSourceResponse.fromMap(Map<String, dynamic> map) {
    return GcsSourceResponse(
      inputUri: (map['inputUri'] as String).input(),
    );
  }
}

