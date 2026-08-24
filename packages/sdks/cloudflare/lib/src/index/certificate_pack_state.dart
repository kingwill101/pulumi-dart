// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_pack_certificate.dart';
import 'certificate_pack_dcv_delegation_record.dart';
import 'certificate_pack_validation_error.dart';
import 'certificate_pack_validation_record.dart';

/// Input properties used for looking up and filtering CertificatePack resources.
class CertificatePackState {
  /// Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String?>? certificateAuthority;
  /// Array of certificates in this pack.
  final pulumi.Input<List<CertificatePackCertificate>?>? certificates;
  /// Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  final pulumi.Input<bool?>? cloudflareBranding;
  /// DCV Delegation records for domain validation.
  final pulumi.Input<List<CertificatePackDcvDelegationRecord>?>? dcvDelegationRecords;
  /// Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  final pulumi.Input<List<String>?>? hosts;
  /// Identifier of the primary certificate in a pack.
  final pulumi.Input<String?>? primaryCertificate;
  /// Status of certificate pack.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  final pulumi.Input<String?>? status;
  /// Type of certificate pack.
  /// Available values: "advanced".
  final pulumi.Input<String?>? type;
  /// Domain validation errors that have been received by the certificate authority (CA).
  final pulumi.Input<List<CertificatePackValidationError>?>? validationErrors;
  /// Validation Method selected for the order.
  /// Available values: "txt", "http", "email".
  final pulumi.Input<String?>? validationMethod;
  /// Certificates' validation records.
  final pulumi.Input<List<CertificatePackValidationRecord>?>? validationRecords;
  /// Validity Days selected for the order.
  /// Available values: 14, 30, 90, 365.
  final pulumi.Input<int?>? validityDays;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CertificatePackState].
  /// [certificateAuthority] Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// [certificates] Array of certificates in this pack.
  /// [cloudflareBranding] Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  /// [dcvDelegationRecords] DCV Delegation records for domain validation.
  /// [hosts] Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  /// [primaryCertificate] Identifier of the primary certificate in a pack.
  /// [status] Status of certificate pack.
  /// [type] Type of certificate pack.
  /// [validationErrors] Domain validation errors that have been received by the certificate authority (CA).
  /// [validationMethod] Validation Method selected for the order.
  /// [validationRecords] Certificates' validation records.
  /// [validityDays] Validity Days selected for the order.
  /// [zoneId] Identifier.
  const CertificatePackState({
    this.certificateAuthority,
    this.certificates,
    this.cloudflareBranding,
    this.dcvDelegationRecords,
    this.hosts,
    this.primaryCertificate,
    this.status,
    this.type,
    this.validationErrors,
    this.validationMethod,
    this.validationRecords,
    this.validityDays,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<CertificatePackCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<CertificatePackCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudflareBranding': ?cloudflareBranding,
      'dcvDelegationRecords': ?pulumi.Input.mapOptionalInputValue<List<CertificatePackDcvDelegationRecord>, List<Map<String, dynamic>>>(dcvDelegationRecords, (value) => pulumi.Input.encodeList<CertificatePackDcvDelegationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hosts': ?hosts,
      'primaryCertificate': ?primaryCertificate,
      'status': ?status,
      'type': ?type,
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<List<CertificatePackValidationError>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<CertificatePackValidationError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationMethod': ?validationMethod,
      'validationRecords': ?pulumi.Input.mapOptionalInputValue<List<CertificatePackValidationRecord>, List<Map<String, dynamic>>>(validationRecords, (value) => pulumi.Input.encodeList<CertificatePackValidationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validityDays': ?validityDays,
      'zoneId': ?zoneId,
    };
  }

  factory CertificatePackState.fromMap(Map<String, dynamic> map) {
    return CertificatePackState(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificatePackCertificate>(guardedValue, (value) => CertificatePackCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudflareBranding: (() { final guardedValue = map['cloudflareBranding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dcvDelegationRecords: (() { final guardedValue = map['dcvDelegationRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificatePackDcvDelegationRecord>(guardedValue, (value) => CertificatePackDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      primaryCertificate: (() { final guardedValue = map['primaryCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationErrors: (() { final guardedValue = map['validationErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificatePackValidationError>(guardedValue, (value) => CertificatePackValidationError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      validationMethod: (() { final guardedValue = map['validationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationRecords: (() { final guardedValue = map['validationRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificatePackValidationRecord>(guardedValue, (value) => CertificatePackValidationRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      validityDays: (() { final guardedValue = map['validityDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
