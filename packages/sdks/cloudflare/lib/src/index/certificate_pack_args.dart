// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_certificate_pack_certificate_pack_args_doc}
/// The set of arguments for CertificatePack.
/// {@endtemplate}
/// {@macro pulumi_index_certificate_pack_certificate_pack_args_doc}
class CertificatePackArgs {
  /// Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String> certificateAuthority;
  /// Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  final pulumi.Input<bool?>? cloudflareBranding;
  /// Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  final pulumi.Input<List<String>?>? hosts;
  /// Type of certificate pack.
  /// Available values: "advanced".
  final pulumi.Input<String> type;
  /// Validation Method selected for the order.
  /// Available values: "txt", "http", "email".
  final pulumi.Input<String> validationMethod;
  /// Validity Days selected for the order.
  /// Available values: 14, 30, 90, 365.
  final pulumi.Input<int> validityDays;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CertificatePackArgs].
  /// [certificateAuthority] Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// [cloudflareBranding] Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  /// [hosts] Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  /// [type] Type of certificate pack.
  /// [validationMethod] Validation Method selected for the order.
  /// [validityDays] Validity Days selected for the order.
  /// [zoneId] Identifier.
  const CertificatePackArgs({
    required this.certificateAuthority,
    this.cloudflareBranding,
    this.hosts,
    required this.type,
    required this.validationMethod,
    required this.validityDays,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'cloudflareBranding': ?cloudflareBranding,
      'hosts': ?hosts,
      'type': type,
      'validationMethod': validationMethod,
      'validityDays': validityDays,
      'zoneId': zoneId,
    };
  }

  factory CertificatePackArgs.fromMap(Map<String, dynamic> map) {
    return CertificatePackArgs(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      cloudflareBranding: (() { final guardedValue = map['cloudflareBranding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      validationMethod: pulumi.Input.fromValue(map['validationMethod'] as String),
      validityDays: pulumi.Input.fromValue((map['validityDays'] as num).toInt()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
