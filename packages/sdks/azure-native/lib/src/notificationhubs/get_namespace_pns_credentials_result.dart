// ignore_for_file: unused_element, unnecessary_cast

import 'adm_credential_response.dart';
import 'apns_credential_response.dart';
import 'baidu_credential_response.dart';
import 'browser_credential_response.dart';
import 'fcm_v1_credential_response.dart';
import 'gcm_credential_response.dart';
import 'mpns_credential_response.dart';
import 'system_data_response.dart';
import 'wns_credential_response.dart';
import 'xiaomi_credential_response.dart';

/// Result data returned by getNamespacePnsCredentials.
class GetNamespacePnsCredentialsResult {
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
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Deprecated - only for compatibility.
  final String? location;
  /// Description of a NotificationHub MpnsCredential.
  final MpnsCredentialResponse? mpnsCredential;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Deprecated - only for compatibility.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Description of a NotificationHub WnsCredential.
  final WnsCredentialResponse? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final XiaomiCredentialResponse? xiaomiCredential;

  /// Creates a new [GetNamespacePnsCredentialsResult].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Deprecated - only for compatibility.
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Deprecated - only for compatibility.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  const GetNamespacePnsCredentialsResult({
    this.admCredential,
    this.apnsCredential,
    this.baiduCredential,
    this.browserCredential,
    this.fcmV1Credential,
    this.gcmCredential,
    required this.id,
    this.location,
    this.mpnsCredential,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
    this.wnsCredential,
    this.xiaomiCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admCredential': ?admCredential?.toMap(),
      'apnsCredential': ?apnsCredential?.toMap(),
      'baiduCredential': ?baiduCredential?.toMap(),
      'browserCredential': ?browserCredential?.toMap(),
      'fcmV1Credential': ?fcmV1Credential?.toMap(),
      'gcmCredential': ?gcmCredential?.toMap(),
      'id': id,
      'location': ?location,
      'mpnsCredential': ?mpnsCredential?.toMap(),
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'wnsCredential': ?wnsCredential?.toMap(),
      'xiaomiCredential': ?xiaomiCredential?.toMap(),
    };
  }

  factory GetNamespacePnsCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetNamespacePnsCredentialsResult(
      admCredential: (() { final guardedValue = map['admCredential']; if (guardedValue == null) return null; return AdmCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      apnsCredential: (() { final guardedValue = map['apnsCredential']; if (guardedValue == null) return null; return ApnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      baiduCredential: (() { final guardedValue = map['baiduCredential']; if (guardedValue == null) return null; return BaiduCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      browserCredential: (() { final guardedValue = map['browserCredential']; if (guardedValue == null) return null; return BrowserCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fcmV1Credential: (() { final guardedValue = map['fcmV1Credential']; if (guardedValue == null) return null; return FcmV1CredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gcmCredential: (() { final guardedValue = map['gcmCredential']; if (guardedValue == null) return null; return GcmCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mpnsCredential: (() { final guardedValue = map['mpnsCredential']; if (guardedValue == null) return null; return MpnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      wnsCredential: (() { final guardedValue = map['wnsCredential']; if (guardedValue == null) return null; return WnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      xiaomiCredential: (() { final guardedValue = map['xiaomiCredential']; if (guardedValue == null) return null; return XiaomiCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
