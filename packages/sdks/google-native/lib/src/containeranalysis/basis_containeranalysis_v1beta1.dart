// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_containeranalysis_v1beta1.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class BasisContaineranalysisV1beta1 {
  /// Immutable. The fingerprint of the base image.
  final pulumi.Input<FingerprintContaineranalysisV1beta1> fingerprint;
  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final pulumi.Input<String> resourceUrl;

  /// Creates a new [BasisContaineranalysisV1beta1].
  /// [fingerprint] Immutable. The fingerprint of the base image.
  /// [resourceUrl] Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  const BasisContaineranalysisV1beta1({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': pulumi.Input.mapInputValue<FingerprintContaineranalysisV1beta1, Map<String, dynamic>>(fingerprint, (value) => value.toMap()),
      'resourceUrl': resourceUrl,
    };
  }

  factory BasisContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return BasisContaineranalysisV1beta1(
      fingerprint: pulumi.Input.fromValue(FingerprintContaineranalysisV1beta1.fromMap((map['fingerprint']! as Map).cast<String, dynamic>())),
      resourceUrl: pulumi.Input.fromValue(map['resourceUrl'] as String),
    );
  }
}
