// ignore_for_file: unused_element, unnecessary_cast

import 'get_pages_domain_validation_data.dart';
import 'get_pages_domain_verification_data.dart';

/// Result data returned by getPagesDomain.
class GetPagesDomainResult {
  /// Identifier.
  final String? accountId;
  /// Available values: "google", "letsEncrypt".
  final String? certificateAuthority;
  final String? createdOn;
  final String? domainId;
  /// The domain name.
  final String? domainName;
  /// The domain name.
  final String? id;
  /// The domain name.
  final String? name;
  /// Name of the project.
  final String? projectName;
  /// Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  final String? status;
  final GetPagesDomainValidationData? validationData;
  final GetPagesDomainVerificationData? verificationData;
  final String? zoneTag;

  /// Creates a new [GetPagesDomainResult].
  /// [accountId] Identifier.
  /// [certificateAuthority] Available values: "google", "letsEncrypt".
  /// [createdOn] Optional.
  /// [domainId] Optional.
  /// [domainName] The domain name.
  /// [id] The domain name.
  /// [name] The domain name.
  /// [projectName] Name of the project.
  /// [status] Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  /// [validationData] Optional.
  /// [verificationData] Optional.
  /// [zoneTag] Optional.
  const GetPagesDomainResult({
    this.accountId,
    this.certificateAuthority,
    this.createdOn,
    this.domainId,
    this.domainName,
    this.id,
    this.name,
    this.projectName,
    this.status,
    this.validationData,
    this.verificationData,
    this.zoneTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'certificateAuthority': ?certificateAuthority,
      'createdOn': ?createdOn,
      'domainId': ?domainId,
      'domainName': ?domainName,
      'id': ?id,
      'name': ?name,
      'projectName': ?projectName,
      'status': ?status,
      'validationData': ?validationData?.toMap(),
      'verificationData': ?verificationData?.toMap(),
      'zoneTag': ?zoneTag,
    };
  }

  factory GetPagesDomainResult.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return GetPagesDomainValidationData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      verificationData: (() { final guardedValue = map['verificationData']; if (guardedValue == null) return null; return GetPagesDomainVerificationData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneTag: (() { final guardedValue = map['zoneTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
