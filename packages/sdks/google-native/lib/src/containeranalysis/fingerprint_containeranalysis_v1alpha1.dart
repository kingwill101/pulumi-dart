// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of properties that uniquely identify a given Docker image.
class FingerprintContaineranalysisV1alpha1 {
  /// The layer-id of the final layer in the Docker image's v1 representation. This field can be used as a filter in list requests.
  final pulumi.Input<String>? v1Name;
  /// The ordered list of v2 blobs that represent a given image.
  final pulumi.Input<List<String>>? v2Blob;

  /// Creates a new [FingerprintContaineranalysisV1alpha1].
  /// [v1Name] The layer-id of the final layer in the Docker image's v1 representation. This field can be used as a filter in list requests.
  /// [v2Blob] The ordered list of v2 blobs that represent a given image.
  const FingerprintContaineranalysisV1alpha1({
    this.v1Name,
    this.v2Blob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1Name': ?v1Name,
      'v2Blob': ?v2Blob,
    };
  }

  factory FingerprintContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return FingerprintContaineranalysisV1alpha1(
      v1Name: (() { final guardedValue = map['v1Name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      v2Blob: (() { final guardedValue = map['v2Blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
