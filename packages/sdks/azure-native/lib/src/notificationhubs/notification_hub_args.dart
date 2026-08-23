// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adm_credential.dart';
import 'apns_credential.dart';
import 'baidu_credential.dart';
import 'browser_credential.dart';
import 'fcm_v1_credential.dart';
import 'gcm_credential.dart';
import 'mpns_credential.dart';
import 'sku.dart';
import 'wns_credential.dart';
import 'xiaomi_credential.dart';

/// {@template pulumi_notificationhubs_notification_hub_args_doc}
/// The set of arguments for NotificationHub.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_notification_hub_args_doc}
class NotificationHubArgs {
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
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Description of a NotificationHub MpnsCredential.
  final pulumi.Input<MpnsCredential>? mpnsCredential;
  /// Gets or sets the NotificationHub name.
  final pulumi.Input<String>? name;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String>? notificationHubName;
  /// Gets or sets the RegistrationTtl of the created NotificationHub
  final pulumi.Input<String>? registrationTtl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Sku description for a namespace
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Description of a NotificationHub WnsCredential.
  final pulumi.Input<WnsCredential>? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final pulumi.Input<XiaomiCredential>? xiaomiCredential;

  /// Creates a new [NotificationHubArgs].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [location] The geo-location where the resource lives
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [name] Gets or sets the NotificationHub name.
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [registrationTtl] Gets or sets the RegistrationTtl of the created NotificationHub
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The Sku description for a namespace
  /// [tags] Resource tags.
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  const NotificationHubArgs({
    this.admCredential,
    this.apnsCredential,
    this.baiduCredential,
    this.browserCredential,
    this.fcmV1Credential,
    this.gcmCredential,
    this.location,
    this.mpnsCredential,
    this.name,
    required this.namespaceName,
    this.notificationHubName,
    this.registrationTtl,
    required this.resourceGroupName,
    this.sku,
    this.tags,
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
      'location': ?location,
      'mpnsCredential': ?pulumi.Input.mapOptionalInputValue<MpnsCredential, Map<String, dynamic>>(mpnsCredential, (value) => value.toMap()),
      'name': ?name,
      'namespaceName': namespaceName,
      'notificationHubName': ?notificationHubName,
      'registrationTtl': ?registrationTtl,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'wnsCredential': ?pulumi.Input.mapOptionalInputValue<WnsCredential, Map<String, dynamic>>(wnsCredential, (value) => value.toMap()),
      'xiaomiCredential': ?pulumi.Input.mapOptionalInputValue<XiaomiCredential, Map<String, dynamic>>(xiaomiCredential, (value) => value.toMap()),
    };
  }

  factory NotificationHubArgs.fromMap(Map<String, dynamic> map) {
    return NotificationHubArgs(
      admCredential: (() { final guardedValue = map['admCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdmCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apnsCredential: (() { final guardedValue = map['apnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApnsCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baiduCredential: (() { final guardedValue = map['baiduCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BaiduCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      browserCredential: (() { final guardedValue = map['browserCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrowserCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fcmV1Credential: (() { final guardedValue = map['fcmV1Credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FcmV1Credential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcmCredential: (() { final guardedValue = map['gcmCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcmCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mpnsCredential: (() { final guardedValue = map['mpnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MpnsCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      notificationHubName: (() { final guardedValue = map['notificationHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationTtl: (() { final guardedValue = map['registrationTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      wnsCredential: (() { final guardedValue = map['wnsCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WnsCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xiaomiCredential: (() { final guardedValue = map['xiaomiCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(XiaomiCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
