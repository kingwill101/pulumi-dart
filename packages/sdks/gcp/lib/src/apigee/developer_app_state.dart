// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_attribute.dart';
import 'developer_app_credential.dart';

/// Input properties used for looking up and filtering DeveloperApp resources.
class DeveloperAppState {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<String>>? apiProducts;
  /// Developer app family.
  final pulumi.Input<String>? appFamily;
  /// ID of the developer app. This ID is not user specified but is
  /// automatically generated on app creation. appId is a UUID.
  final pulumi.Input<String>? appId;
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppAttribute>>? attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  final pulumi.Input<String>? callbackUrl;
  /// Time at which the developer was created in milliseconds since epoch.
  final pulumi.Input<String>? createdAt;
  /// Output only. Set of credentials for the developer app consisting of
  /// the consumer key/secret pairs associated with the API products.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppCredential>>? credentials;
  /// Email address of the developer.
  /// This value is used to uniquely identify the developer in Apigee hybrid.
  /// Note that the email address has to be in lowercase only.
  final pulumi.Input<String>? developerEmail;
  /// ID of the developer.
  final pulumi.Input<String>? developerId;
  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of -1,
  /// the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;
  /// Time at which the developer was last modified in milliseconds since epoch.
  final pulumi.Input<String>? lastModifiedAt;
  /// Name of the developer app.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;
  /// Status of the credential. Valid values include approved or revoked.
  final pulumi.Input<String>? status;

  /// Creates a new [DeveloperAppState].
  /// [apiProducts] List of API products associated with the developer app.
  /// [appFamily] Developer app family.
  /// [appId] ID of the developer app. This ID is not user specified but is
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate
  /// [createdAt] Time at which the developer was created in milliseconds since epoch.
  /// [credentials] Output only. Set of credentials for the developer app consisting of
  /// [developerEmail] Email address of the developer.
  /// [developerId] ID of the developer.
  /// [keyExpiresIn] Expiration time, in milliseconds, for the consumer key that is generated
  /// [lastModifiedAt] Time at which the developer was last modified in milliseconds since epoch.
  /// [name] Name of the developer app.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [scopes] Scopes to apply to the developer app.
  /// [status] Status of the credential. Valid values include approved or revoked.
  DeveloperAppState({
    this.apiProducts,
    this.appFamily,
    this.appId,
    this.attributes,
    this.callbackUrl,
    this.createdAt,
    this.credentials,
    this.developerEmail,
    this.developerId,
    this.keyExpiresIn,
    this.lastModifiedAt,
    this.name,
    this.orgId,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appFamily': ?appFamily,
      'appId': ?appId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<DeveloperAppAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'callbackUrl': ?callbackUrl,
      'createdAt': ?createdAt,
      'credentials': ?pulumi.Input.mapOptionalInputValue<List<DeveloperAppCredential>, List<Map<String, dynamic>>>(credentials, (value) => pulumi.Input.encodeList<DeveloperAppCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'developerEmail': ?developerEmail,
      'developerId': ?developerId,
      'keyExpiresIn': ?keyExpiresIn,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'orgId': ?orgId,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory DeveloperAppState.fromMap(Map<String, dynamic> map) {
    return DeveloperAppState(
      apiProducts: map['apiProducts'] == null ? null : ((map['apiProducts'] as List).cast<String>()).input(),
      appFamily: map['appFamily'] == null ? null : (map['appFamily'] as String).input(),
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<DeveloperAppAttribute>(map['attributes'], (value) => DeveloperAppAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      callbackUrl: map['callbackUrl'] == null ? null : (map['callbackUrl'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      credentials: map['credentials'] == null ? null : (pulumi.Input.decodeList<DeveloperAppCredential>(map['credentials'], (value) => DeveloperAppCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      developerEmail: map['developerEmail'] == null ? null : (map['developerEmail'] as String).input(),
      developerId: map['developerId'] == null ? null : (map['developerId'] as String).input(),
      keyExpiresIn: map['keyExpiresIn'] == null ? null : (map['keyExpiresIn'] as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

