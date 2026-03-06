// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Google Cloud Storage location for the input content.
class GcsSource {
  /// Source data URI. For example, `gs://my_bucket/my_object`.
  final pulumi.Input<String> inputUri;

  /// Creates a new [GcsSource].
  /// [inputUri] Source data URI. For example, `gs://my_bucket/my_object`.
  const GcsSource({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputUri': inputUri,
    };
  }

  factory GcsSource.fromMap(Map<String, dynamic> map) {
    return GcsSource(
      inputUri: pulumi.Input.fromValue(map['inputUri'] as String),
    );
  }
}

