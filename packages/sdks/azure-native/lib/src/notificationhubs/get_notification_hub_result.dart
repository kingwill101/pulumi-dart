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
  GetNotificationHubResult({
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
      'admCredential': ?admCredential == null ? null : admCredential!.toMap(),
      'apnsCredential': ?apnsCredential == null ? null : apnsCredential!.toMap(),
      'authorizationRules': pulumi.Input.encodeList<SharedAccessAuthorizationRulePropertiesResponse, Map<String, dynamic>>(authorizationRules, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'baiduCredential': ?baiduCredential == null ? null : baiduCredential!.toMap(),
      'browserCredential': ?browserCredential == null ? null : browserCredential!.toMap(),
      'dailyMaxActiveDevices': dailyMaxActiveDevices,
      'fcmV1Credential': ?fcmV1Credential == null ? null : fcmV1Credential!.toMap(),
      'gcmCredential': ?gcmCredential == null ? null : gcmCredential!.toMap(),
      'id': id,
      'location': location,
      'mpnsCredential': ?mpnsCredential == null ? null : mpnsCredential!.toMap(),
      'name': name,
      'registrationTtl': ?registrationTtl,
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'wnsCredential': ?wnsCredential == null ? null : wnsCredential!.toMap(),
      'xiaomiCredential': ?xiaomiCredential == null ? null : xiaomiCredential!.toMap(),
    };
  }

  factory GetNotificationHubResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationHubResult(
      admCredential: map['admCredential'] == null ? null : AdmCredentialResponse.fromMap((map['admCredential']! as Map).cast<String, dynamic>()),
      apnsCredential: map['apnsCredential'] == null ? null : ApnsCredentialResponse.fromMap((map['apnsCredential']! as Map).cast<String, dynamic>()),
      authorizationRules: pulumi.Input.decodeList<SharedAccessAuthorizationRulePropertiesResponse>(map['authorizationRules'], (value) => SharedAccessAuthorizationRulePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      baiduCredential: map['baiduCredential'] == null ? null : BaiduCredentialResponse.fromMap((map['baiduCredential']! as Map).cast<String, dynamic>()),
      browserCredential: map['browserCredential'] == null ? null : BrowserCredentialResponse.fromMap((map['browserCredential']! as Map).cast<String, dynamic>()),
      dailyMaxActiveDevices: map['dailyMaxActiveDevices'] as double,
      fcmV1Credential: map['fcmV1Credential'] == null ? null : FcmV1CredentialResponse.fromMap((map['fcmV1Credential']! as Map).cast<String, dynamic>()),
      gcmCredential: map['gcmCredential'] == null ? null : GcmCredentialResponse.fromMap((map['gcmCredential']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      mpnsCredential: map['mpnsCredential'] == null ? null : MpnsCredentialResponse.fromMap((map['mpnsCredential']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      registrationTtl: map['registrationTtl'] == null ? null : map['registrationTtl']! as String,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      wnsCredential: map['wnsCredential'] == null ? null : WnsCredentialResponse.fromMap((map['wnsCredential']! as Map).cast<String, dynamic>()),
      xiaomiCredential: map['xiaomiCredential'] == null ? null : XiaomiCredentialResponse.fromMap((map['xiaomiCredential']! as Map).cast<String, dynamic>()),
    );
  }
}

