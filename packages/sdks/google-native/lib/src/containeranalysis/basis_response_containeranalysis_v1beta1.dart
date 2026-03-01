// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint_response_containeranalysis_v1beta1.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class BasisResponseContaineranalysisV1beta1 {
  /// Immutable. The fingerprint of the base image.
  final FingerprintResponseContaineranalysisV1beta1 fingerprint;
  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  /// Creates a new [BasisResponseContaineranalysisV1beta1].
  /// [fingerprint] Immutable. The fingerprint of the base image.
  /// [resourceUrl] Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  BasisResponseContaineranalysisV1beta1({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint.toMap(),
      'resourceUrl': resourceUrl,
    };
  }

  factory BasisResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return BasisResponseContaineranalysisV1beta1(
      fingerprint: FingerprintResponseContaineranalysisV1beta1.fromMap((map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}

