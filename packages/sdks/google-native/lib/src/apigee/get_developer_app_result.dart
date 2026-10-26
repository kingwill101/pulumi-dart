// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Result data returned by getDeveloperApp.
class GetDeveloperAppResult {
  /// List of API products associated with the developer app.
  final List<String>? apiProducts;
  /// Developer app family.
  final String? appFamily;
  /// ID of the developer app.
  final String? appId;
  /// List of attributes for the developer app.
  final List<GoogleCloudApigeeV1AttributeResponse>? attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  final String? callbackUrl;
  /// Time the developer app was created in milliseconds since epoch.
  final String? createdAt;
  /// Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.
  final List<GoogleCloudApigeeV1CredentialResponse>? credentials;
  /// ID of the developer.
  final String? developerId;
  /// Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final String? keyExpiresIn;
  /// Time the developer app was modified in milliseconds since epoch.
  final String? lastModifiedAt;
  /// Name of the developer app.
  final String? name;
  /// Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  final List<String>? scopes;
  /// Status of the credential. Valid values include `approved` or `revoked`.
  final String? status;

  /// Creates a new [GetDeveloperAppResult].
  /// [apiProducts] List of API products associated with the developer app.
  /// [appFamily] Developer app family.
  /// [appId] ID of the developer app.
  /// [attributes] List of attributes for the developer app.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  /// [createdAt] Time the developer app was created in milliseconds since epoch.
  /// [credentials] Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.
  /// [developerId] ID of the developer.
  /// [keyExpiresIn] Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [lastModifiedAt] Time the developer app was modified in milliseconds since epoch.
  /// [name] Name of the developer app.
  /// [scopes] Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  /// [status] Status of the credential. Valid values include `approved` or `revoked`.
  const GetDeveloperAppResult({
    this.apiProducts,
    this.appFamily,
    this.appId,
    this.attributes,
    this.callbackUrl,
    this.createdAt,
    this.credentials,
    this.developerId,
    this.keyExpiresIn,
    this.lastModifiedAt,
    this.name,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appFamily': ?appFamily,
      'appId': ?appId,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'callbackUrl': ?callbackUrl,
      'createdAt': ?createdAt,
      'credentials': ?(() { final guardedValue = credentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1CredentialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'developerId': ?developerId,
      'keyExpiresIn': ?keyExpiresIn,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory GetDeveloperAppResult.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppResult(
      apiProducts: (() { final guardedValue = map['apiProducts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      appFamily: (() { final guardedValue = map['appFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(guardedValue, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      callbackUrl: (() { final guardedValue = map['callbackUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1CredentialResponse>(guardedValue, (value) => GoogleCloudApigeeV1CredentialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      developerId: (() { final guardedValue = map['developerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyExpiresIn: (() { final guardedValue = map['keyExpiresIn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
