// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of properties that uniquely identify a given Docker image.
class Fingerprint {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  final pulumi.Input<String> v1Name;
  /// The ordered list of v2 blobs that represent a given image.
  final pulumi.Input<List<String>> v2Blob;

  /// Creates a new [Fingerprint].
  /// [v1Name] The layer ID of the final layer in the Docker image's v1 representation.
  /// [v2Blob] The ordered list of v2 blobs that represent a given image.
  Fingerprint({
    required this.v1Name,
    required this.v2Blob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1Name': v1Name,
      'v2Blob': v2Blob,
    };
  }

  factory Fingerprint.fromMap(Map<String, dynamic> map) {
    return Fingerprint(
      v1Name: pulumi.Input.fromValue(map['v1Name'] as String),
      v2Blob: pulumi.Input.fromValue((map['v2Blob'] as List).cast<String>()),
    );
  }
}

