// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_hostname_ssl_dcv_delegation_record.dart';
import 'get_custom_hostname_ssl_settings.dart';
import 'get_custom_hostname_ssl_validation_error.dart';
import 'get_custom_hostname_ssl_validation_record.dart';

class GetCustomHostnameSsl {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String> bundleMethod;
  /// The Certificate Authority that will issue the certificate.
  /// Available values: "digicert", "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String> certificateAuthority;
  /// If a custom uploaded certificate is used.
  final pulumi.Input<String> customCertificate;
  /// The identifier for the Custom CSR that was used.
  final pulumi.Input<String> customCsrId;
  /// The key for a custom uploaded certificate.
  final pulumi.Input<String> customKey;
  /// DCV Delegation records for domain validation.
  final pulumi.Input<List<GetCustomHostnameSslDcvDelegationRecord>> dcvDelegationRecords;
  /// The time the custom certificate expires on.
  final pulumi.Input<String> expiresOn;
  /// A list of Hostnames on a custom uploaded certificate.
  final pulumi.Input<List<String>> hosts;
  /// Custom hostname SSL identifier tag.
  final pulumi.Input<String> id;
  /// The issuer on a custom uploaded certificate.
  final pulumi.Input<String> issuer;
  /// Domain control validation (DCV) method used for this hostname.
  /// Available values: "http", "txt", "email".
  final pulumi.Input<String> method;
  /// The serial number on a custom uploaded certificate.
  final pulumi.Input<String> serialNumber;
  final pulumi.Input<GetCustomHostnameSslSettings> settings;
  /// The signature on a custom uploaded certificate.
  final pulumi.Input<String> signature;
  /// Status of the hostname's SSL certificates.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  final pulumi.Input<String> status;
  /// Level of validation to be used for this hostname. Domain validation (dv) must be used.
  /// Available values: "dv".
  final pulumi.Input<String> type;
  /// The time the custom certificate was uploaded.
  final pulumi.Input<String> uploadedOn;
  /// Domain validation errors that have been received by the certificate authority (CA).
  final pulumi.Input<List<GetCustomHostnameSslValidationError>> validationErrors;
  final pulumi.Input<List<GetCustomHostnameSslValidationRecord>> validationRecords;
  /// Indicates whether the certificate covers a wildcard.
  final pulumi.Input<bool> wildcard;

  /// Creates a new [GetCustomHostnameSsl].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [certificateAuthority] The Certificate Authority that will issue the certificate.
  /// [customCertificate] If a custom uploaded certificate is used.
  /// [customCsrId] The identifier for the Custom CSR that was used.
  /// [customKey] The key for a custom uploaded certificate.
  /// [dcvDelegationRecords] DCV Delegation records for domain validation.
  /// [expiresOn] The time the custom certificate expires on.
  /// [hosts] A list of Hostnames on a custom uploaded certificate.
  /// [id] Custom hostname SSL identifier tag.
  /// [issuer] The issuer on a custom uploaded certificate.
  /// [method] Domain control validation (DCV) method used for this hostname.
  /// [serialNumber] The serial number on a custom uploaded certificate.
  /// [settings] Required.
  /// [signature] The signature on a custom uploaded certificate.
  /// [status] Status of the hostname's SSL certificates.
  /// [type] Level of validation to be used for this hostname. Domain validation (dv) must be used.
  /// [uploadedOn] The time the custom certificate was uploaded.
  /// [validationErrors] Domain validation errors that have been received by the certificate authority (CA).
  /// [validationRecords] Required.
  /// [wildcard] Indicates whether the certificate covers a wildcard.
  const GetCustomHostnameSsl({
    required this.bundleMethod,
    required this.certificateAuthority,
    required this.customCertificate,
    required this.customCsrId,
    required this.customKey,
    required this.dcvDelegationRecords,
    required this.expiresOn,
    required this.hosts,
    required this.id,
    required this.issuer,
    required this.method,
    required this.serialNumber,
    required this.settings,
    required this.signature,
    required this.status,
    required this.type,
    required this.uploadedOn,
    required this.validationErrors,
    required this.validationRecords,
    required this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': bundleMethod,
      'certificateAuthority': certificateAuthority,
      'customCertificate': customCertificate,
      'customCsrId': customCsrId,
      'customKey': customKey,
      'dcvDelegationRecords': pulumi.Input.mapInputValue<List<GetCustomHostnameSslDcvDelegationRecord>, List<Map<String, dynamic>>>(dcvDelegationRecords, (value) => pulumi.Input.encodeList<GetCustomHostnameSslDcvDelegationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expiresOn': expiresOn,
      'hosts': hosts,
      'id': id,
      'issuer': issuer,
      'method': method,
      'serialNumber': serialNumber,
      'settings': pulumi.Input.mapInputValue<GetCustomHostnameSslSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'signature': signature,
      'status': status,
      'type': type,
      'uploadedOn': uploadedOn,
      'validationErrors': pulumi.Input.mapInputValue<List<GetCustomHostnameSslValidationError>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<GetCustomHostnameSslValidationError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationRecords': pulumi.Input.mapInputValue<List<GetCustomHostnameSslValidationRecord>, List<Map<String, dynamic>>>(validationRecords, (value) => pulumi.Input.encodeList<GetCustomHostnameSslValidationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wildcard': wildcard,
    };
  }

  factory GetCustomHostnameSsl.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameSsl(
      bundleMethod: pulumi.Input.fromValue(map['bundleMethod'] as String),
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      customCertificate: pulumi.Input.fromValue(map['customCertificate'] as String),
      customCsrId: pulumi.Input.fromValue(map['customCsrId'] as String),
      customKey: pulumi.Input.fromValue(map['customKey'] as String),
      dcvDelegationRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomHostnameSslDcvDelegationRecord>(map['dcvDelegationRecords']!, (value) => GetCustomHostnameSslDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      settings: pulumi.Input.fromValue(GetCustomHostnameSslSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomHostnameSslValidationError>(map['validationErrors']!, (value) => GetCustomHostnameSslValidationError.fromMap((value as Map).cast<String, dynamic>()))),
      validationRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomHostnameSslValidationRecord>(map['validationRecords']!, (value) => GetCustomHostnameSslValidationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      wildcard: pulumi.Input.fromValue(map['wildcard'] as bool),
    );
  }
}
