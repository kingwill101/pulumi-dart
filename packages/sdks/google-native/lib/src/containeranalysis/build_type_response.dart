// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_signature_response.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in linked BuildDetails.
class BuildTypeResponse {
  /// Version of the builder which produced this Note.
  final pulumi.Input<String> builderVersion;
  /// Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  final pulumi.Input<BuildSignatureResponse> signature;

  /// Creates a new [BuildTypeResponse].
  /// [builderVersion] Version of the builder which produced this Note.
  /// [signature] Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  const BuildTypeResponse({
    required this.builderVersion,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
      'signature': pulumi.Input.mapInputValue<BuildSignatureResponse, Map<String, dynamic>>(signature, (value) => value.toMap()),
    };
  }

  factory BuildTypeResponse.fromMap(Map<String, dynamic> map) {
    return BuildTypeResponse(
      builderVersion: pulumi.Input.fromValue(map['builderVersion'] as String),
      signature: pulumi.Input.fromValue(BuildSignatureResponse.fromMap((map['signature']! as Map).cast<String, dynamic>())),
    );
  }
}
