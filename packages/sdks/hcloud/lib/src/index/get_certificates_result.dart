// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate.dart';

/// Result data returned by getCertificates.
class GetCertificatesResult {
  /// (list) List of all matching certificates. See `data.hcloud_certificate` for schema.
  final List<GetCertificatesCertificate> certificates;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? withSelector;

  /// Creates a new [GetCertificatesResult].
  /// [certificates] (list) List of all matching certificates. See `data.hcloud_certificate` for schema.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [withSelector] Optional.
  GetCertificatesResult({
    required this.certificates,
    required this.id,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          pulumi.Input.encodeList<
            GetCertificatesCertificate,
            Map<String, dynamic>
          >(certificates, (value) => value.toMap()),
      'id': id,
      'withSelector': ?withSelector,
    };
  }

  factory GetCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatesResult(
      certificates: pulumi.Input.decodeList<GetCertificatesCertificate>(
        map['certificates']!,
        (value) => GetCertificatesCertificate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
