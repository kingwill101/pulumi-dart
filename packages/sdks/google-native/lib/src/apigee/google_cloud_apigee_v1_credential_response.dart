// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_api_product_ref_response.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';

class GoogleCloudApigeeV1CredentialResponse {
  /// List of API products this credential can be used for.
  final pulumi.Input<List<GoogleCloudApigeeV1ApiProductRefResponse>> apiProducts;
  /// List of attributes associated with this credential.
  final pulumi.Input<List<GoogleCloudApigeeV1AttributeResponse>> attributes;
  /// Consumer key.
  final pulumi.Input<String> consumerKey;
  /// Secret key.
  final pulumi.Input<String> consumerSecret;
  /// Time the credential will expire in milliseconds since epoch.
  final pulumi.Input<String> expiresAt;
  /// Time the credential was issued in milliseconds since epoch.
  final pulumi.Input<String> issuedAt;
  /// List of scopes to apply to the app. Specified scopes must already exist on the API product that you associate with the app.
  final pulumi.Input<List<String>> scopes;
  /// Status of the credential. Valid values include `approved` or `revoked`.
  final pulumi.Input<String> status;

  /// Creates a new [GoogleCloudApigeeV1CredentialResponse].
  /// [apiProducts] List of API products this credential can be used for.
  /// [attributes] List of attributes associated with this credential.
  /// [consumerKey] Consumer key.
  /// [consumerSecret] Secret key.
  /// [expiresAt] Time the credential will expire in milliseconds since epoch.
  /// [issuedAt] Time the credential was issued in milliseconds since epoch.
  /// [scopes] List of scopes to apply to the app. Specified scopes must already exist on the API product that you associate with the app.
  /// [status] Status of the credential. Valid values include `approved` or `revoked`.
  GoogleCloudApigeeV1CredentialResponse({
    required this.apiProducts,
    required this.attributes,
    required this.consumerKey,
    required this.consumerSecret,
    required this.expiresAt,
    required this.issuedAt,
    required this.scopes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1ApiProductRefResponse>, List<Map<String, dynamic>>>(apiProducts, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1ApiProductRefResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attributes': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1AttributeResponse>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
      'expiresAt': expiresAt,
      'issuedAt': issuedAt,
      'scopes': scopes,
      'status': status,
    };
  }

  factory GoogleCloudApigeeV1CredentialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CredentialResponse(
      apiProducts: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1ApiProductRefResponse>(map['apiProducts']!, (value) => GoogleCloudApigeeV1ApiProductRefResponse.fromMap((value as Map).cast<String, dynamic>()))),
      attributes: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(map['attributes']!, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      consumerKey: pulumi.Input.fromValue(map['consumerKey'] as String),
      consumerSecret: pulumi.Input.fromValue(map['consumerSecret'] as String),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      issuedAt: pulumi.Input.fromValue(map['issuedAt'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

