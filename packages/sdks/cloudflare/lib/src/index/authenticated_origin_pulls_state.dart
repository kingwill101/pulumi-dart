// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authenticated_origin_pulls_config.dart';

/// Input properties used for looking up and filtering AuthenticatedOriginPulls resources.
class AuthenticatedOriginPullsState {
  /// Identifier.
  final pulumi.Input<String?>? certId;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final pulumi.Input<String?>? certStatus;
  /// The time when the certificate was updated.
  final pulumi.Input<String?>? certUpdatedAt;
  /// The time when the certificate was uploaded.
  final pulumi.Input<String?>? certUploadedOn;
  /// The hostname certificate.
  final pulumi.Input<String?>? certificate;
  final pulumi.Input<List<AuthenticatedOriginPullsConfig>?>? configs;
  /// The time when the certificate was created.
  final pulumi.Input<String?>? createdAt;
  /// Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  final pulumi.Input<bool?>? enabled;
  /// The date when the certificate expires.
  final pulumi.Input<String?>? expiresOn;
  /// The hostname on the origin for which the client certificate uploaded will be used.
  final pulumi.Input<String?>? hostname;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  /// The hostname certificate's private key.
  final pulumi.Input<String?>? privateKey;
  /// The serial number on the uploaded certificate.
  final pulumi.Input<String?>? serialNumber;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final pulumi.Input<String?>? status;
  /// The time when the certificate was updated.
  final pulumi.Input<String?>? updatedAt;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AuthenticatedOriginPullsState].
  /// [certId] Identifier.
  /// [certStatus] Status of the certificate or the association.
  /// [certUpdatedAt] The time when the certificate was updated.
  /// [certUploadedOn] The time when the certificate was uploaded.
  /// [certificate] The hostname certificate.
  /// [configs] Optional.
  /// [createdAt] The time when the certificate was created.
  /// [enabled] Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  /// [expiresOn] The date when the certificate expires.
  /// [hostname] The hostname on the origin for which the client certificate uploaded will be used.
  /// [issuer] The certificate authority that issued the certificate.
  /// [privateKey] The hostname certificate's private key.
  /// [serialNumber] The serial number on the uploaded certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the certificate or the association.
  /// [updatedAt] The time when the certificate was updated.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsState({
    this.certId,
    this.certStatus,
    this.certUpdatedAt,
    this.certUploadedOn,
    this.certificate,
    this.configs,
    this.createdAt,
    this.enabled,
    this.expiresOn,
    this.hostname,
    this.issuer,
    this.privateKey,
    this.serialNumber,
    this.signature,
    this.status,
    this.updatedAt,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certStatus': ?certStatus,
      'certUpdatedAt': ?certUpdatedAt,
      'certUploadedOn': ?certUploadedOn,
      'certificate': ?certificate,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<AuthenticatedOriginPullsConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<AuthenticatedOriginPullsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'enabled': ?enabled,
      'expiresOn': ?expiresOn,
      'hostname': ?hostname,
      'issuer': ?issuer,
      'privateKey': ?privateKey,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'zoneId': ?zoneId,
    };
  }

  factory AuthenticatedOriginPullsState.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsState(
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certStatus: (() { final guardedValue = map['certStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certUpdatedAt: (() { final guardedValue = map['certUpdatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certUploadedOn: (() { final guardedValue = map['certUploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthenticatedOriginPullsConfig>(guardedValue, (value) => AuthenticatedOriginPullsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
