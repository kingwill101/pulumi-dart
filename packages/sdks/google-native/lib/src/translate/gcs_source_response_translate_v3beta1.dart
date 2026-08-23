// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Google Cloud Storage location for the input content.
class GcsSourceResponseTranslateV3beta1 {
  /// Source data URI. For example, `gs://my_bucket/my_object`.
  final pulumi.Input<String> inputUri;

  /// Creates a new [GcsSourceResponseTranslateV3beta1].
  /// [inputUri] Source data URI. For example, `gs://my_bucket/my_object`.
  const GcsSourceResponseTranslateV3beta1({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputUri': inputUri,
    };
  }

  factory GcsSourceResponseTranslateV3beta1.fromMap(Map<String, dynamic> map) {
    return GcsSourceResponseTranslateV3beta1(
      inputUri: pulumi.Input.fromValue(map['inputUri'] as String),
    );
  }
}
