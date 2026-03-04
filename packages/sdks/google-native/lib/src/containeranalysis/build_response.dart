// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_signature_response_containeranalysis_v1beta1.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildResponse {
  /// Immutable. Version of the builder which produced this build.
  final pulumi.Input<String> builderVersion;

  /// Signature of the build in occurrences pointing to this build note containing build details.
  final pulumi.Input<BuildSignatureResponseContaineranalysisV1beta1> signature;

  /// Creates a new [BuildResponse].
  /// [builderVersion] Immutable. Version of the builder which produced this build.
  /// [signature] Signature of the build in occurrences pointing to this build note containing build details.
  BuildResponse({required this.builderVersion, required this.signature});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
      'signature':
          pulumi.Input.mapInputValue<
            BuildSignatureResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(signature, (value) => value.toMap()),
    };
  }

  factory BuildResponse.fromMap(Map<String, dynamic> map) {
    return BuildResponse(
      builderVersion: pulumi.Input.fromValue(map['builderVersion'] as String),
      signature: pulumi.Input.fromValue(
        BuildSignatureResponseContaineranalysisV1beta1.fromMap(
          (map['signature']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
