// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_packs_result_certificate.dart';
import 'get_certificate_packs_result_dcv_delegation_record.dart';
import 'get_certificate_packs_result_validation_error.dart';
import 'get_certificate_packs_result_validation_record.dart';

class GetCertificatePacksResult {
  /// Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String> certificateAuthority;
  /// Array of certificates in this pack.
  final pulumi.Input<List<GetCertificatePacksResultCertificate>> certificates;
  /// Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  final pulumi.Input<bool> cloudflareBranding;
  /// DCV Delegation records for domain validation.
  final pulumi.Input<List<GetCertificatePacksResultDcvDelegationRecord>> dcvDelegationRecords;
  /// Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  final pulumi.Input<List<String>> hosts;
  /// Identifier.
  final pulumi.Input<String> id;
  /// Identifier of the primary certificate in a pack.
  final pulumi.Input<String> primaryCertificate;
  /// Status of certificate pack.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  final pulumi.Input<String> status;
  /// Type of certificate pack.
  /// Available values: "mh*custom", "managed*hostname", "sni*custom", "universal", "advanced", "total*tls", "keyless", "legacyCustom".
  final pulumi.Input<String> type;
  /// Domain validation errors that have been received by the certificate authority (CA).
  final pulumi.Input<List<GetCertificatePacksResultValidationError>> validationErrors;
  /// Validation Method selected for the order.
  /// Available values: "txt", "http", "email".
  final pulumi.Input<String> validationMethod;
  /// Certificates' validation records.
  final pulumi.Input<List<GetCertificatePacksResultValidationRecord>> validationRecords;
  /// Validity Days selected for the order.
  /// Available values: 14, 30, 90, 365.
  final pulumi.Input<int> validityDays;

  /// Creates a new [GetCertificatePacksResult].
  /// [certificateAuthority] Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// [certificates] Array of certificates in this pack.
  /// [cloudflareBranding] Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  /// [dcvDelegationRecords] DCV Delegation records for domain validation.
  /// [hosts] Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  /// [id] Identifier.
  /// [primaryCertificate] Identifier of the primary certificate in a pack.
  /// [status] Status of certificate pack.
  /// [type] Type of certificate pack.
  /// [validationErrors] Domain validation errors that have been received by the certificate authority (CA).
  /// [validationMethod] Validation Method selected for the order.
  /// [validationRecords] Certificates' validation records.
  /// [validityDays] Validity Days selected for the order.
  const GetCertificatePacksResult({
    required this.certificateAuthority,
    required this.certificates,
    required this.cloudflareBranding,
    required this.dcvDelegationRecords,
    required this.hosts,
    required this.id,
    required this.primaryCertificate,
    required this.status,
    required this.type,
    required this.validationErrors,
    required this.validationMethod,
    required this.validationRecords,
    required this.validityDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'certificates': pulumi.Input.mapInputValue<List<GetCertificatePacksResultCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetCertificatePacksResultCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudflareBranding': cloudflareBranding,
      'dcvDelegationRecords': pulumi.Input.mapInputValue<List<GetCertificatePacksResultDcvDelegationRecord>, List<Map<String, dynamic>>>(dcvDelegationRecords, (value) => pulumi.Input.encodeList<GetCertificatePacksResultDcvDelegationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hosts': hosts,
      'id': id,
      'primaryCertificate': primaryCertificate,
      'status': status,
      'type': type,
      'validationErrors': pulumi.Input.mapInputValue<List<GetCertificatePacksResultValidationError>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<GetCertificatePacksResultValidationError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationMethod': validationMethod,
      'validationRecords': pulumi.Input.mapInputValue<List<GetCertificatePacksResultValidationRecord>, List<Map<String, dynamic>>>(validationRecords, (value) => pulumi.Input.encodeList<GetCertificatePacksResultValidationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validityDays': validityDays,
    };
  }

  factory GetCertificatePacksResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatePacksResult(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatePacksResultCertificate>(map['certificates']!, (value) => GetCertificatePacksResultCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      cloudflareBranding: pulumi.Input.fromValue(map['cloudflareBranding'] as bool),
      dcvDelegationRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatePacksResultDcvDelegationRecord>(map['dcvDelegationRecords']!, (value) => GetCertificatePacksResultDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      primaryCertificate: pulumi.Input.fromValue(map['primaryCertificate'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatePacksResultValidationError>(map['validationErrors']!, (value) => GetCertificatePacksResultValidationError.fromMap((value as Map).cast<String, dynamic>()))),
      validationMethod: pulumi.Input.fromValue(map['validationMethod'] as String),
      validationRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatePacksResultValidationRecord>(map['validationRecords']!, (value) => GetCertificatePacksResultValidationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      validityDays: pulumi.Input.fromValue((map['validityDays'] as num).toInt()),
    );
  }
}
