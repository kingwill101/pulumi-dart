// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse {
  /// Collection of cryptographic digests for the contents of the artifact specified by invocation.configSource.uri.
  final pulumi.Input<Map<String, String>> digest;
  /// String identifying the entry point into the build.
  final pulumi.Input<String> entryPoint;
  /// URI indicating the identity of the source of the config.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse].
  /// [digest] Collection of cryptographic digests for the contents of the artifact specified by invocation.configSource.uri.
  /// [entryPoint] String identifying the entry point into the build.
  /// [uri] URI indicating the identity of the source of the config.
  const GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse({
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

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse(
      digest: pulumi.Input.fromValue((map['digest'] as Map).cast<String, String>()),
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
