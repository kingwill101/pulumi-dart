// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_signature_containeranalysis_v1beta1.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class Build {
  /// Immutable. Version of the builder which produced this build.
  final pulumi.Input<String> builderVersion;
  /// Signature of the build in occurrences pointing to this build note containing build details.
  final pulumi.Input<BuildSignatureContaineranalysisV1beta1>? signature;

  /// Creates a new [Build].
  /// [builderVersion] Immutable. Version of the builder which produced this build.
  /// [signature] Signature of the build in occurrences pointing to this build note containing build details.
  const Build({
    required this.builderVersion,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
      'signature': ?pulumi.Input.mapOptionalInputValue<BuildSignatureContaineranalysisV1beta1, Map<String, dynamic>>(signature, (value) => value.toMap()),
    };
  }

  factory Build.fromMap(Map<String, dynamic> map) {
    return Build(
      builderVersion: pulumi.Input.fromValue(map['builderVersion'] as String),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildSignatureContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
