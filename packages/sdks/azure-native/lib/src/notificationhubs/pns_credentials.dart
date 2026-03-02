// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adm_credential.dart';
import 'apns_credential.dart';
import 'baidu_credential.dart';
import 'browser_credential.dart';
import 'fcm_v1_credential.dart';
import 'gcm_credential.dart';
import 'mpns_credential.dart';
import 'wns_credential.dart';
import 'xiaomi_credential.dart';

/// Collection of Notification Hub or Notification Hub Namespace PNS credentials.
class PnsCredentials {
  /// Description of a NotificationHub AdmCredential.
  final pulumi.Input<AdmCredential>? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final pulumi.Input<ApnsCredential>? apnsCredential;
  /// Description of a NotificationHub BaiduCredential.
  final pulumi.Input<BaiduCredential>? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final pulumi.Input<BrowserCredential>? browserCredential;
  /// Description of a NotificationHub FcmV1Credential.
  final pulumi.Input<FcmV1Credential>? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final pulumi.Input<GcmCredential>? gcmCredential;
  /// Description of a NotificationHub MpnsCredential.
  final pulumi.Input<MpnsCredential>? mpnsCredential;
  /// Description of a NotificationHub WnsCredential.
  final pulumi.Input<WnsCredential>? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final pulumi.Input<XiaomiCredential>? xiaomiCredential;

  /// Creates a new [PnsCredentials].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  PnsCredentials({
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
      'admCredential': ?pulumi.Input.mapOptionalInputValue<AdmCredential, Map<String, dynamic>>(admCredential, (value) => value.toMap()),
      'apnsCredential': ?pulumi.Input.mapOptionalInputValue<ApnsCredential, Map<String, dynamic>>(apnsCredential, (value) => value.toMap()),
      'baiduCredential': ?pulumi.Input.mapOptionalInputValue<BaiduCredential, Map<String, dynamic>>(baiduCredential, (value) => value.toMap()),
      'browserCredential': ?pulumi.Input.mapOptionalInputValue<BrowserCredential, Map<String, dynamic>>(browserCredential, (value) => value.toMap()),
      'fcmV1Credential': ?pulumi.Input.mapOptionalInputValue<FcmV1Credential, Map<String, dynamic>>(fcmV1Credential, (value) => value.toMap()),
      'gcmCredential': ?pulumi.Input.mapOptionalInputValue<GcmCredential, Map<String, dynamic>>(gcmCredential, (value) => value.toMap()),
      'mpnsCredential': ?pulumi.Input.mapOptionalInputValue<MpnsCredential, Map<String, dynamic>>(mpnsCredential, (value) => value.toMap()),
      'wnsCredential': ?pulumi.Input.mapOptionalInputValue<WnsCredential, Map<String, dynamic>>(wnsCredential, (value) => value.toMap()),
      'xiaomiCredential': ?pulumi.Input.mapOptionalInputValue<XiaomiCredential, Map<String, dynamic>>(xiaomiCredential, (value) => value.toMap()),
    };
  }

  factory PnsCredentials.fromMap(Map<String, dynamic> map) {
    return PnsCredentials(
      admCredential: map['admCredential'] == null ? null : (AdmCredential.fromMap((map['admCredential'] as Map).cast<String, dynamic>())).input(),
      apnsCredential: map['apnsCredential'] == null ? null : (ApnsCredential.fromMap((map['apnsCredential'] as Map).cast<String, dynamic>())).input(),
      baiduCredential: map['baiduCredential'] == null ? null : (BaiduCredential.fromMap((map['baiduCredential'] as Map).cast<String, dynamic>())).input(),
      browserCredential: map['browserCredential'] == null ? null : (BrowserCredential.fromMap((map['browserCredential'] as Map).cast<String, dynamic>())).input(),
      fcmV1Credential: map['fcmV1Credential'] == null ? null : (FcmV1Credential.fromMap((map['fcmV1Credential'] as Map).cast<String, dynamic>())).input(),
      gcmCredential: map['gcmCredential'] == null ? null : (GcmCredential.fromMap((map['gcmCredential'] as Map).cast<String, dynamic>())).input(),
      mpnsCredential: map['mpnsCredential'] == null ? null : (MpnsCredential.fromMap((map['mpnsCredential'] as Map).cast<String, dynamic>())).input(),
      wnsCredential: map['wnsCredential'] == null ? null : (WnsCredential.fromMap((map['wnsCredential'] as Map).cast<String, dynamic>())).input(),
      xiaomiCredential: map['xiaomiCredential'] == null ? null : (XiaomiCredential.fromMap((map['xiaomiCredential'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

