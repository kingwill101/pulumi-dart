// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Result data returned by getDeveloperAppKey.
class GetDeveloperAppKeyResult {
  /// List of API products for which the credential can be used. **Note**: Do not specify the list of API products when creating a consumer key and secret for a developer app. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created.
  final List<dynamic> apiProducts;
  /// List of attributes associated with the credential.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;
  /// Consumer key.
  final String consumerKey;
  /// Secret key.
  final String consumerSecret;
  /// Time the developer app expires in milliseconds since epoch.
  final String expiresAt;
  /// Input only. Expiration time, in seconds, for the consumer key. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final String expiresInSeconds;
  /// Time the developer app was created in milliseconds since epoch.
  final String issuedAt;
  /// Scopes to apply to the app. The specified scope names must already be defined for the API product that you associate with the app.
  final List<String> scopes;
  /// Status of the credential. Valid values include `approved` or `revoked`.
  final String status;

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
  GetDeveloperAppKeyResult({
    required this.apiProducts,
    required this.attributes,
    required this.consumerKey,
    required this.consumerSecret,
    required this.expiresAt,
    required this.expiresInSeconds,
    required this.issuedAt,
    required this.scopes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': apiProducts,
      'attributes': pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
      'expiresAt': expiresAt,
      'expiresInSeconds': expiresInSeconds,
      'issuedAt': issuedAt,
      'scopes': scopes,
      'status': status,
    };
  }

  factory GetDeveloperAppKeyResult.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppKeyResult(
      apiProducts: (map['apiProducts'] as List).cast<dynamic>(),
      attributes: pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(map['attributes'], (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>())),
      consumerKey: map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] as String,
      expiresAt: map['expiresAt'] as String,
      expiresInSeconds: map['expiresInSeconds'] as String,
      issuedAt: map['issuedAt'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}

