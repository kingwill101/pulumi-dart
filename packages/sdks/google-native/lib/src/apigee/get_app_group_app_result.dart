// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Result data returned by getAppGroupApp.
class GetAppGroupAppResult {
  /// List of API products associated with the AppGroup app.
  final List<String>? apiProducts;
  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  final String? appGroup;
  /// Immutable. ID of the AppGroup app.
  final String? appId;
  /// List of attributes for the AppGroup app.
  final List<GoogleCloudApigeeV1AttributeResponse>? attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  final String? callbackUrl;
  /// Time the AppGroup app was created in milliseconds since epoch.
  final String? createdAt;
  /// Set of credentials for the AppGroup app consisting of the consumer key/secret pairs associated with the API products.
  final List<GoogleCloudApigeeV1CredentialResponse>? credentials;
  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final String? keyExpiresIn;
  /// Time the AppGroup app was modified in milliseconds since epoch.
  final String? lastModifiedAt;
  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  final String? name;
  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  final List<String>? scopes;
  /// Status of the App. Valid values include `approved` or `revoked`.
  final String? status;

  /// Creates a new [GetAppGroupAppResult].
  /// [apiProducts] List of API products associated with the AppGroup app.
  /// [appGroup] Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  /// [appId] Immutable. ID of the AppGroup app.
  /// [attributes] List of attributes for the AppGroup app.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  /// [createdAt] Time the AppGroup app was created in milliseconds since epoch.
  /// [credentials] Set of credentials for the AppGroup app consisting of the consumer key/secret pairs associated with the API products.
  /// [keyExpiresIn] Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [lastModifiedAt] Time the AppGroup app was modified in milliseconds since epoch.
  /// [name] Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  /// [scopes] Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  /// [status] Status of the App. Valid values include `approved` or `revoked`.
  const GetAppGroupAppResult({
    this.apiProducts,
    this.appGroup,
    this.appId,
    this.attributes,
    this.callbackUrl,
    this.createdAt,
    this.credentials,
    this.keyExpiresIn,
    this.lastModifiedAt,
    this.name,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appGroup': ?appGroup,
      'appId': ?appId,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'callbackUrl': ?callbackUrl,
      'createdAt': ?createdAt,
      'credentials': ?(() { final guardedValue = credentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1CredentialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyExpiresIn': ?keyExpiresIn,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory GetAppGroupAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppResult(
      apiProducts: (() { final guardedValue = map['apiProducts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      appGroup: (() { final guardedValue = map['appGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(guardedValue, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      callbackUrl: (() { final guardedValue = map['callbackUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1CredentialResponse>(guardedValue, (value) => GoogleCloudApigeeV1CredentialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyExpiresIn: (() { final guardedValue = map['keyExpiresIn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
