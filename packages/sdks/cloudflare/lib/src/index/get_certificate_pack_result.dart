// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_pack_certificate.dart';
import 'get_certificate_pack_dcv_delegation_record.dart';
import 'get_certificate_pack_filter.dart';
import 'get_certificate_pack_validation_error.dart';
import 'get_certificate_pack_validation_record.dart';

/// Result data returned by getCertificatePack.
class GetCertificatePackResult {
  /// Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final String? certificateAuthority;
  /// Identifier.
  final String? certificatePackId;
  /// Array of certificates in this pack.
  final List<GetCertificatePackCertificate>? certificates;
  /// Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  final bool? cloudflareBranding;
  /// DCV Delegation records for domain validation.
  final List<GetCertificatePackDcvDelegationRecord>? dcvDelegationRecords;
  final GetCertificatePackFilter? filter;
  /// Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  final List<String>? hosts;
  /// Identifier.
  final String? id;
  /// Identifier of the primary certificate in a pack.
  final String? primaryCertificate;
  /// Status of certificate pack.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  final String? status;
  /// Type of certificate pack.
  /// Available values: "mh*custom", "managed*hostname", "sni*custom", "universal", "advanced", "total*tls", "keyless", "legacyCustom".
  final String? type;
  /// Domain validation errors that have been received by the certificate authority (CA).
  final List<GetCertificatePackValidationError>? validationErrors;
  /// Validation Method selected for the order.
  /// Available values: "txt", "http", "email".
  final String? validationMethod;
  /// Certificates' validation records.
  final List<GetCertificatePackValidationRecord>? validationRecords;
  /// Validity Days selected for the order.
  /// Available values: 14, 30, 90, 365.
  final int? validityDays;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCertificatePackResult].
  /// [certificateAuthority] Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// [certificatePackId] Identifier.
  /// [certificates] Array of certificates in this pack.
  /// [cloudflareBranding] Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  /// [dcvDelegationRecords] DCV Delegation records for domain validation.
  /// [filter] Optional.
  /// [hosts] Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  /// [id] Identifier.
  /// [primaryCertificate] Identifier of the primary certificate in a pack.
  /// [status] Status of certificate pack.
  /// [type] Type of certificate pack.
  /// [validationErrors] Domain validation errors that have been received by the certificate authority (CA).
  /// [validationMethod] Validation Method selected for the order.
  /// [validationRecords] Certificates' validation records.
  /// [validityDays] Validity Days selected for the order.
  /// [zoneId] Identifier.
  const GetCertificatePackResult({
    this.certificateAuthority,
    this.certificatePackId,
    this.certificates,
    this.cloudflareBranding,
    this.dcvDelegationRecords,
    this.filter,
    this.hosts,
    this.id,
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
      'certificatePackId': ?certificatePackId,
      'certificates': ?(() { final guardedValue = certificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificatePackCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cloudflareBranding': ?cloudflareBranding,
      'dcvDelegationRecords': ?(() { final guardedValue = dcvDelegationRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificatePackDcvDelegationRecord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter?.toMap(),
      'hosts': ?hosts,
      'id': ?id,
      'primaryCertificate': ?primaryCertificate,
      'status': ?status,
      'type': ?type,
      'validationErrors': ?(() { final guardedValue = validationErrors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificatePackValidationError, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validationMethod': ?validationMethod,
      'validationRecords': ?(() { final guardedValue = validationRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificatePackValidationRecord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validityDays': ?validityDays,
      'zoneId': ?zoneId,
    };
  }

  factory GetCertificatePackResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatePackResult(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificatePackId: (() { final guardedValue = map['certificatePackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificatePackCertificate>(guardedValue, (value) => GetCertificatePackCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      cloudflareBranding: (() { final guardedValue = map['cloudflareBranding']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dcvDelegationRecords: (() { final guardedValue = map['dcvDelegationRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificatePackDcvDelegationRecord>(guardedValue, (value) => GetCertificatePackDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetCertificatePackFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryCertificate: (() { final guardedValue = map['primaryCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationErrors: (() { final guardedValue = map['validationErrors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificatePackValidationError>(guardedValue, (value) => GetCertificatePackValidationError.fromMap((value as Map).cast<String, dynamic>())); })(),
      validationMethod: (() { final guardedValue = map['validationMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationRecords: (() { final guardedValue = map['validationRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificatePackValidationRecord>(guardedValue, (value) => GetCertificatePackValidationRecord.fromMap((value as Map).cast<String, dynamic>())); })(),
      validityDays: (() { final guardedValue = map['validityDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
