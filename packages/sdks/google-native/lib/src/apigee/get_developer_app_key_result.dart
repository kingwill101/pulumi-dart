// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Result data returned by getDeveloperAppKey.
class GetDeveloperAppKeyResult {
  /// List of API products for which the credential can be used. **Note**: Do not specify the list of API products when creating a consumer key and secret for a developer app. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created.
  final List<dynamic>? apiProducts;
  /// List of attributes associated with the credential.
  final List<GoogleCloudApigeeV1AttributeResponse>? attributes;
  /// Consumer key.
  final String? consumerKey;
  /// Secret key.
  final String? consumerSecret;
  /// Time the developer app expires in milliseconds since epoch.
  final String? expiresAt;
  /// Input only. Expiration time, in seconds, for the consumer key. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final String? expiresInSeconds;
  /// Time the developer app was created in milliseconds since epoch.
  final String? issuedAt;
  /// Scopes to apply to the app. The specified scope names must already be defined for the API product that you associate with the app.
  final List<String>? scopes;
  /// Status of the credential. Valid values include `approved` or `revoked`.
  final String? status;

  /// Creates a new [GetDeveloperAppKeyResult].
  /// [apiProducts] List of API products for which the credential can be used. **Note**: Do not specify the list of API products when creating a consumer key and secret for a developer app. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created.
  /// [attributes] List of attributes associated with the credential.
  /// [consumerKey] Consumer key.
  /// [consumerSecret] Secret key.
  /// [expiresAt] Time the developer app expires in milliseconds since epoch.
  /// [expiresInSeconds] Input only. Expiration time, in seconds, for the consumer key. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [issuedAt] Time the developer app was created in milliseconds since epoch.
  /// [scopes] Scopes to apply to the app. The specified scope names must already be defined for the API product that you associate with the app.
  /// [status] Status of the credential. Valid values include `approved` or `revoked`.
  const GetDeveloperAppKeyResult({
    this.apiProducts,
    this.attributes,
    this.consumerKey,
    this.consumerSecret,
    this.expiresAt,
    this.expiresInSeconds,
    this.issuedAt,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consumerKey': ?consumerKey,
      'consumerSecret': ?consumerSecret,
      'expiresAt': ?expiresAt,
      'expiresInSeconds': ?expiresInSeconds,
      'issuedAt': ?issuedAt,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory GetDeveloperAppKeyResult.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppKeyResult(
      apiProducts: (() { final guardedValue = map['apiProducts']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(guardedValue, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      consumerKey: (() { final guardedValue = map['consumerKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerSecret: (() { final guardedValue = map['consumerSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresInSeconds: (() { final guardedValue = map['expiresInSeconds']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuedAt: (() { final guardedValue = map['issuedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
