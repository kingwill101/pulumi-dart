// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint_response_containeranalysis_v1alpha1.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class BasisResponse {
  /// The fingerprint of the base image.
  final FingerprintResponseContaineranalysisV1alpha1 fingerprint;
  /// The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  /// Creates a new [BasisResponse].
  /// [fingerprint] The fingerprint of the base image.
  /// [resourceUrl] The resource_url for the resource representing the basis of associated occurrence images.
  BasisResponse({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint.toMap(),
      'resourceUrl': resourceUrl,
    };
  }

  factory BasisResponse.fromMap(Map<String, dynamic> map) {
    return BasisResponse(
      fingerprint: FingerprintResponseContaineranalysisV1alpha1.fromMap((map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}

