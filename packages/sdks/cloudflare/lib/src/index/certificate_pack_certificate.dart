// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_pack_certificate_geo_restrictions.dart';

class CertificatePackCertificate {
  /// Certificate bundle method.
  final pulumi.Input<String?>? bundleMethod;
  /// When the certificate from the authority expires.
  final pulumi.Input<String?>? expiresOn;
  /// Specify the region where your private key can be held locally.
  final pulumi.Input<CertificatePackCertificateGeoRestrictions?>? geoRestrictions;
  /// Hostnames covered by this certificate.
  final pulumi.Input<List<String>?>? hosts;
  /// Certificate identifier.
  final pulumi.Input<String?>? id;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  /// When the certificate was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The order/priority in which the certificate will be used.
  final pulumi.Input<double?>? priority;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// Certificate status.
  final pulumi.Input<String?>? status;
  /// When the certificate was uploaded to Cloudflare.
  final pulumi.Input<String?>? uploadedOn;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CertificatePackCertificate].
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
  const CertificatePackCertificate({
    this.bundleMethod,
    this.expiresOn,
    this.geoRestrictions,
    this.hosts,
    this.id,
    this.issuer,
    this.modifiedOn,
    this.priority,
    this.signature,
    this.status,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': ?bundleMethod,
      'expiresOn': ?expiresOn,
      'geoRestrictions': ?pulumi.Input.mapOptionalInputValue<CertificatePackCertificateGeoRestrictions, Map<String, dynamic>>(geoRestrictions, (value) => value.toMap()),
      'hosts': ?hosts,
      'id': ?id,
      'issuer': ?issuer,
      'modifiedOn': ?modifiedOn,
      'priority': ?priority,
      'signature': ?signature,
      'status': ?status,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory CertificatePackCertificate.fromMap(Map<String, dynamic> map) {
    return CertificatePackCertificate(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoRestrictions: (() { final guardedValue = map['geoRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificatePackCertificateGeoRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
