// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_pack_certificate_geo_restrictions.dart';

class GetCertificatePackCertificate {
  /// Certificate bundle method.
  final pulumi.Input<String> bundleMethod;
  /// When the certificate from the authority expires.
  final pulumi.Input<String> expiresOn;
  /// Specify the region where your private key can be held locally.
  final pulumi.Input<GetCertificatePackCertificateGeoRestrictions> geoRestrictions;
  /// Hostnames covered by this certificate.
  final pulumi.Input<List<String>> hosts;
  /// Certificate identifier.
  final pulumi.Input<String> id;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String> issuer;
  /// When the certificate was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The order/priority in which the certificate will be used.
  final pulumi.Input<double> priority;
  /// The type of hash used for the certificate.
  final pulumi.Input<String> signature;
  /// Certificate status.
  final pulumi.Input<String> status;
  /// When the certificate was uploaded to Cloudflare.
  final pulumi.Input<String> uploadedOn;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetCertificatePackCertificate].
  /// [bundleMethod] Certificate bundle method.
  /// [expiresOn] When the certificate from the authority expires.
  /// [geoRestrictions] Specify the region where your private key can be held locally.
  /// [hosts] Hostnames covered by this certificate.
  /// [id] Certificate identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [modifiedOn] When the certificate was last modified.
  /// [priority] The order/priority in which the certificate will be used.
  /// [signature] The type of hash used for the certificate.
  /// [status] Certificate status.
  /// [uploadedOn] When the certificate was uploaded to Cloudflare.
  /// [zoneId] Identifier.
  const GetCertificatePackCertificate({
    required this.bundleMethod,
    required this.expiresOn,
    required this.geoRestrictions,
    required this.hosts,
    required this.id,
    required this.issuer,
    required this.modifiedOn,
    required this.priority,
    required this.signature,
    required this.status,
    required this.uploadedOn,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': bundleMethod,
      'expiresOn': expiresOn,
      'geoRestrictions': pulumi.Input.mapInputValue<GetCertificatePackCertificateGeoRestrictions, Map<String, dynamic>>(geoRestrictions, (value) => value.toMap()),
      'hosts': hosts,
      'id': id,
      'issuer': issuer,
      'modifiedOn': modifiedOn,
      'priority': priority,
      'signature': signature,
      'status': status,
      'uploadedOn': uploadedOn,
      'zoneId': zoneId,
    };
  }

  factory GetCertificatePackCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatePackCertificate(
      bundleMethod: pulumi.Input.fromValue(map['bundleMethod'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      geoRestrictions: pulumi.Input.fromValue(GetCertificatePackCertificateGeoRestrictions.fromMap((map['geoRestrictions']! as Map).cast<String, dynamic>())),
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
