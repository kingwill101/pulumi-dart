// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adm_credential_response.dart';
import 'apns_credential_response.dart';
import 'baidu_credential_response.dart';
import 'browser_credential_response.dart';
import 'fcm_v1_credential_response.dart';
import 'gcm_credential_response.dart';
import 'mpns_credential_response.dart';
import 'wns_credential_response.dart';
import 'xiaomi_credential_response.dart';

/// Collection of Notification Hub or Notification Hub Namespace PNS credentials.
class PnsCredentialsResponse {
  /// Description of a NotificationHub AdmCredential.
  final pulumi.Input<AdmCredentialResponse>? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final pulumi.Input<ApnsCredentialResponse>? apnsCredential;
  /// Description of a NotificationHub BaiduCredential.
  final pulumi.Input<BaiduCredentialResponse>? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final pulumi.Input<BrowserCredentialResponse>? browserCredential;
  /// Description of a NotificationHub FcmV1Credential.
  final pulumi.Input<FcmV1CredentialResponse>? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final pulumi.Input<GcmCredentialResponse>? gcmCredential;
  /// Description of a NotificationHub MpnsCredential.
  final pulumi.Input<MpnsCredentialResponse>? mpnsCredential;
  /// Description of a NotificationHub WnsCredential.
  final pulumi.Input<WnsCredentialResponse>? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final pulumi.Input<XiaomiCredentialResponse>? xiaomiCredential;

  /// Creates a new [PnsCredentialsResponse].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  const PnsCredentialsResponse({
    this.admCredential,
    this.apnsCredential,
    this.baiduCredential,
    this.browserCredential,
    this.fcmV1Credential,
    this.gcmCredential,
    this.mpnsCredential,
    this.wnsCredential,
    this.xiaomiCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admCredential': ?pulumi.Input.mapOptionalInputValue<AdmCredentialResponse, Map<String, dynamic>>(admCredential, (value) => value.toMap()),
      'apnsCredential': ?pulumi.Input.mapOptionalInputValue<ApnsCredentialResponse, Map<String, dynamic>>(apnsCredential, (value) => value.toMap()),
      'baiduCredential': ?pulumi.Input.mapOptionalInputValue<BaiduCredentialResponse, Map<String, dynamic>>(baiduCredential, (value) => value.toMap()),
      'browserCredential': ?pulumi.Input.mapOptionalInputValue<BrowserCredentialResponse, Map<String, dynamic>>(browserCredential, (value) => value.toMap()),
      'fcmV1Credential': ?pulumi.Input.mapOptionalInputValue<FcmV1CredentialResponse, Map<String, dynamic>>(fcmV1Credential, (value) => value.toMap()),
      'gcmCredential': ?pulumi.Input.mapOptionalInputValue<GcmCredentialResponse, Map<String, dynamic>>(gcmCredential, (value) => value.toMap()),
      'mpnsCredential': ?pulumi.Input.mapOptionalInputValue<MpnsCredentialResponse, Map<String, dynamic>>(mpnsCredential, (value) => value.toMap()),
      'wnsCredential': ?pulumi.Input.mapOptionalInputValue<WnsCredentialResponse, Map<String, dynamic>>(wnsCredential, (value) => value.toMap()),
      'xiaomiCredential': ?pulumi.Input.mapOptionalInputValue<XiaomiCredentialResponse, Map<String, dynamic>>(xiaomiCredential, (value) => value.toMap()),
    };
  }

  factory PnsCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return PnsCredentialsResponse(
      admCredential: (() { final guardedValue = map['admCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdmCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apnsCredential: (() { final guardedValue = map['apnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baiduCredential: (() { final guardedValue = map['baiduCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BaiduCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      browserCredential: (() { final guardedValue = map['browserCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrowserCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fcmV1Credential: (() { final guardedValue = map['fcmV1Credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FcmV1CredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcmCredential: (() { final guardedValue = map['gcmCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcmCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mpnsCredential: (() { final guardedValue = map['mpnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MpnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wnsCredential: (() { final guardedValue = map['wnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xiaomiCredential: (() { final guardedValue = map['xiaomiCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(XiaomiCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

