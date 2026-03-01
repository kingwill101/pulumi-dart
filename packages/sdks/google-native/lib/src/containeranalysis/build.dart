// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature_containeranalysis_v1beta1.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class Build {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;
  /// Signature of the build in occurrences pointing to this build note containing build details.
  final BuildSignatureContaineranalysisV1beta1? signature;

  /// Creates a new [Build].
  /// [builderVersion] Immutable. Version of the builder which produced this build.
  /// [signature] Signature of the build in occurrences pointing to this build note containing build details.
  Build({
    required this.builderVersion,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
      'signature': ?signature == null ? null : signature!.toMap(),
    };
  }

  factory Build.fromMap(Map<String, dynamic> map) {
    return Build(
      builderVersion: map['builderVersion'] as String,
      signature: map['signature'] == null ? null : BuildSignatureContaineranalysisV1beta1.fromMap((map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}

