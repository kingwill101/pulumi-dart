// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_domain_validation_data.dart';
import 'pages_domain_verification_data.dart';

/// Input properties used for looking up and filtering PagesDomain resources.
class PagesDomainState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Available values: "google", "letsEncrypt".
  final pulumi.Input<String?>? certificateAuthority;
  final pulumi.Input<String?>? createdOn;
  final pulumi.Input<String?>? domainId;
  /// The domain name.
  final pulumi.Input<String?>? name;
  /// Name of the project.
  final pulumi.Input<String?>? projectName;
  /// Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  final pulumi.Input<String?>? status;
  final pulumi.Input<PagesDomainValidationData?>? validationData;
  final pulumi.Input<PagesDomainVerificationData?>? verificationData;
  final pulumi.Input<String?>? zoneTag;

  /// Creates a new [PagesDomainState].
  /// [accountId] Identifier.
  /// [certificateAuthority] Available values: "google", "letsEncrypt".
  /// [createdOn] Optional.
  /// [domainId] Optional.
  /// [name] The domain name.
  /// [projectName] Name of the project.
  /// [status] Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  /// [validationData] Optional.
  /// [verificationData] Optional.
  /// [zoneTag] Optional.
  const PagesDomainState({
    this.accountId,
    this.certificateAuthority,
    this.createdOn,
    this.domainId,
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
      'name': ?name,
      'projectName': ?projectName,
      'status': ?status,
      'validationData': ?pulumi.Input.mapOptionalInputValue<PagesDomainValidationData, Map<String, dynamic>>(validationData, (value) => value.toMap()),
      'verificationData': ?pulumi.Input.mapOptionalInputValue<PagesDomainVerificationData, Map<String, dynamic>>(verificationData, (value) => value.toMap()),
      'zoneTag': ?zoneTag,
    };
  }

  factory PagesDomainState.fromMap(Map<String, dynamic> map) {
    return PagesDomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesDomainValidationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verificationData: (() { final guardedValue = map['verificationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesDomainVerificationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneTag: (() { final guardedValue = map['zoneTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
