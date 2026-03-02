// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_containeranalysis_v1alpha1.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class Basis {
  /// The fingerprint of the base image.
  final pulumi.Input<FingerprintContaineranalysisV1alpha1>? fingerprint;
  /// The resource_url for the resource representing the basis of associated occurrence images.
  final pulumi.Input<String>? resourceUrl;

  /// Creates a new [Basis].
  /// [fingerprint] The fingerprint of the base image.
  /// [resourceUrl] The resource_url for the resource representing the basis of associated occurrence images.
  Basis({
    this.fingerprint,
    this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?pulumi.Input.mapOptionalInputValue<FingerprintContaineranalysisV1alpha1, Map<String, dynamic>>(fingerprint, (value) => value.toMap()),
      'resourceUrl': ?resourceUrl,
    };
  }

  factory Basis.fromMap(Map<String, dynamic> map) {
    return Basis(
      fingerprint: map['fingerprint'] == null ? null : (FingerprintContaineranalysisV1alpha1.fromMap((map['fingerprint']! as Map).cast<String, dynamic>())).input(),
      resourceUrl: map['resourceUrl'] == null ? null : (map['resourceUrl']! as String).input(),
    );
  }
}

