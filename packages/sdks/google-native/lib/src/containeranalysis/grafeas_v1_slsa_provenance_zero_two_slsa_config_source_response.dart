// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.
class GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse {
  final pulumi.Input<Map<String, String>> digest;
  final pulumi.Input<String> entryPoint;
  final pulumi.Input<String> uri;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse].
  /// [digest] Required.
  /// [entryPoint] Required.
  /// [uri] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse({
    required this.digest,
    required this.entryPoint,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'entryPoint': entryPoint,
      'uri': uri,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse(
      digest: pulumi.Input.fromValue(
        (map['digest'] as Map).cast<String, String>(),
      ),
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
