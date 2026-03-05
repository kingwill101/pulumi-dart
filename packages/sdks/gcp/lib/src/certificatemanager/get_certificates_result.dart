// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate.dart';

/// Result data returned by getCertificates.
class GetCertificatesResult {
  /// A list of all retrieved certificates. See gcp.certificatemanager.Certificate resource for details of the available attributes.
  final List<GetCertificatesCertificate> certificates;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? region;

  /// Creates a new [GetCertificatesResult].
  /// [certificates] A list of all retrieved certificates. See gcp.certificatemanager.Certificate resource for details of the available attributes.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  GetCertificatesResult({
    required this.certificates,
    this.filter,
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<GetCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'filter': ?filter,
      'id': id,
      'region': ?region,
    };
  }

  factory GetCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatesResult(
      certificates: pulumi.Input.decodeList<GetCertificatesCertificate>(map['certificates']!, (value) => GetCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

