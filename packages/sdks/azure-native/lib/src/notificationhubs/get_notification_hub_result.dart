// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adm_credential_response.dart';
import 'apns_credential_response.dart';
import 'baidu_credential_response.dart';
import 'browser_credential_response.dart';
import 'fcm_v1_credential_response.dart';
import 'gcm_credential_response.dart';
import 'mpns_credential_response.dart';
import 'shared_access_authorization_rule_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'wns_credential_response.dart';
import 'xiaomi_credential_response.dart';

/// Result data returned by getNotificationHub.
class GetNotificationHubResult {
  /// Description of a NotificationHub AdmCredential.
  final AdmCredentialResponse? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final ApnsCredentialResponse? apnsCredential;
  /// Gets or sets the AuthorizationRules of the created NotificationHub
  final List<SharedAccessAuthorizationRulePropertiesResponse> authorizationRules;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of a NotificationHub BaiduCredential.
  final BaiduCredentialResponse? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final BrowserCredentialResponse? browserCredential;
  final double dailyMaxActiveDevices;
  /// Description of a NotificationHub FcmV1Credential.
  final FcmV1CredentialResponse? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final GcmCredentialResponse? gcmCredential;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Description of a NotificationHub MpnsCredential.
  final MpnsCredentialResponse? mpnsCredential;
  /// The name of the resource
  final String name;
  /// Gets or sets the RegistrationTtl of the created NotificationHub
  final String? registrationTtl;
  /// The Sku description for a namespace
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Description of a NotificationHub WnsCredential.
  final WnsCredentialResponse? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final XiaomiCredentialResponse? xiaomiCredential;

  /// Creates a new [GetNotificationHubResult].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [authorizationRules] Gets or sets the AuthorizationRules of the created NotificationHub
  /// [azureApiVersion] The Azure API version of the resource.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [dailyMaxActiveDevices] Required.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [name] The name of the resource
  /// [registrationTtl] Gets or sets the RegistrationTtl of the created NotificationHub
  /// [sku] The Sku description for a namespace
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  const GetNotificationHubResult({
    this.admCredential,
    this.apnsCredential,
    required this.authorizationRules,
    required this.azureApiVersion,
    this.baiduCredential,
    this.browserCredential,
    required this.dailyMaxActiveDevices,
    this.fcmV1Credential,
    this.gcmCredential,
    required this.id,
    required this.location,
    this.mpnsCredential,
    required this.name,
    this.registrationTtl,
    this.sku,
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
      'authorizationRules': pulumi.Input.encodeList<SharedAccessAuthorizationRulePropertiesResponse, Map<String, dynamic>>(authorizationRules, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'baiduCredential': ?baiduCredential?.toMap(),
      'browserCredential': ?browserCredential?.toMap(),
      'dailyMaxActiveDevices': dailyMaxActiveDevices,
      'fcmV1Credential': ?fcmV1Credential?.toMap(),
      'gcmCredential': ?gcmCredential?.toMap(),
      'id': id,
      'location': location,
      'mpnsCredential': ?mpnsCredential?.toMap(),
      'name': name,
      'registrationTtl': ?registrationTtl,
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'wnsCredential': ?wnsCredential?.toMap(),
      'xiaomiCredential': ?xiaomiCredential?.toMap(),
    };
  }

  factory GetNotificationHubResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationHubResult(
      admCredential: (() { final guardedValue = map['admCredential']; if (guardedValue == null) return null; return AdmCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      apnsCredential: (() { final guardedValue = map['apnsCredential']; if (guardedValue == null) return null; return ApnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authorizationRules: pulumi.Input.decodeList<SharedAccessAuthorizationRulePropertiesResponse>(map['authorizationRules']!, (value) => SharedAccessAuthorizationRulePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      baiduCredential: (() { final guardedValue = map['baiduCredential']; if (guardedValue == null) return null; return BaiduCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      browserCredential: (() { final guardedValue = map['browserCredential']; if (guardedValue == null) return null; return BrowserCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dailyMaxActiveDevices: map['dailyMaxActiveDevices'] as double,
      fcmV1Credential: (() { final guardedValue = map['fcmV1Credential']; if (guardedValue == null) return null; return FcmV1CredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gcmCredential: (() { final guardedValue = map['gcmCredential']; if (guardedValue == null) return null; return GcmCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      mpnsCredential: (() { final guardedValue = map['mpnsCredential']; if (guardedValue == null) return null; return MpnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      registrationTtl: (() { final guardedValue = map['registrationTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      wnsCredential: (() { final guardedValue = map['wnsCredential']; if (guardedValue == null) return null; return WnsCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      xiaomiCredential: (() { final guardedValue = map['xiaomiCredential']; if (guardedValue == null) return null; return XiaomiCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

