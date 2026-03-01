// ignore_for_file: unused_element, unnecessary_cast

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
  final AdmCredentialResponse? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final ApnsCredentialResponse? apnsCredential;
  /// Description of a NotificationHub BaiduCredential.
  final BaiduCredentialResponse? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final BrowserCredentialResponse? browserCredential;
  /// Description of a NotificationHub FcmV1Credential.
  final FcmV1CredentialResponse? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final GcmCredentialResponse? gcmCredential;
  /// Description of a NotificationHub MpnsCredential.
  final MpnsCredentialResponse? mpnsCredential;
  /// Description of a NotificationHub WnsCredential.
  final WnsCredentialResponse? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final XiaomiCredentialResponse? xiaomiCredential;

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
  PnsCredentialsResponse({
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
      'admCredential': ?admCredential == null ? null : admCredential!.toMap(),
      'apnsCredential': ?apnsCredential == null ? null : apnsCredential!.toMap(),
      'baiduCredential': ?baiduCredential == null ? null : baiduCredential!.toMap(),
      'browserCredential': ?browserCredential == null ? null : browserCredential!.toMap(),
      'fcmV1Credential': ?fcmV1Credential == null ? null : fcmV1Credential!.toMap(),
      'gcmCredential': ?gcmCredential == null ? null : gcmCredential!.toMap(),
      'mpnsCredential': ?mpnsCredential == null ? null : mpnsCredential!.toMap(),
      'wnsCredential': ?wnsCredential == null ? null : wnsCredential!.toMap(),
      'xiaomiCredential': ?xiaomiCredential == null ? null : xiaomiCredential!.toMap(),
    };
  }

  factory PnsCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return PnsCredentialsResponse(
      admCredential: map['admCredential'] == null ? null : AdmCredentialResponse.fromMap((map['admCredential'] as Map).cast<String, dynamic>()),
      apnsCredential: map['apnsCredential'] == null ? null : ApnsCredentialResponse.fromMap((map['apnsCredential'] as Map).cast<String, dynamic>()),
      baiduCredential: map['baiduCredential'] == null ? null : BaiduCredentialResponse.fromMap((map['baiduCredential'] as Map).cast<String, dynamic>()),
      browserCredential: map['browserCredential'] == null ? null : BrowserCredentialResponse.fromMap((map['browserCredential'] as Map).cast<String, dynamic>()),
      fcmV1Credential: map['fcmV1Credential'] == null ? null : FcmV1CredentialResponse.fromMap((map['fcmV1Credential'] as Map).cast<String, dynamic>()),
      gcmCredential: map['gcmCredential'] == null ? null : GcmCredentialResponse.fromMap((map['gcmCredential'] as Map).cast<String, dynamic>()),
      mpnsCredential: map['mpnsCredential'] == null ? null : MpnsCredentialResponse.fromMap((map['mpnsCredential'] as Map).cast<String, dynamic>()),
      wnsCredential: map['wnsCredential'] == null ? null : WnsCredentialResponse.fromMap((map['wnsCredential'] as Map).cast<String, dynamic>()),
      xiaomiCredential: map['xiaomiCredential'] == null ? null : XiaomiCredentialResponse.fromMap((map['xiaomiCredential'] as Map).cast<String, dynamic>()),
    );
  }
}

