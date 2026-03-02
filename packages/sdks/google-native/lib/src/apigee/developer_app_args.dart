// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_developer_app_args_doc}
/// The set of arguments for DeveloperApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_developer_app_args_doc}
class DeveloperAppArgs {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<String>>? apiProducts;
  /// Developer app family.
  final pulumi.Input<String>? appFamily;
  /// ID of the developer app.
  final pulumi.Input<String>? appId;
  /// List of attributes for the developer app.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  final pulumi.Input<String>? callbackUrl;
  /// ID of the developer.
  final pulumi.Input<String> developerId;
  /// Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;
  /// Name of the developer app.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;
  /// Status of the credential. Valid values include `approved` or `revoked`.
  final pulumi.Input<String>? status;

  /// Creates a new [DeveloperAppArgs].
  /// [apiProducts] List of API products associated with the developer app.
  /// [appFamily] Developer app family.
  /// [appId] ID of the developer app.
  /// [attributes] List of attributes for the developer app.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  /// [developerId] ID of the developer.
  /// [keyExpiresIn] Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [name] Name of the developer app.
  /// [organizationId] Required.
  /// [scopes] Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  /// [status] Status of the credential. Valid values include `approved` or `revoked`.
  DeveloperAppArgs({
    this.apiProducts,
    this.appFamily,
    this.appId,
    this.attributes,
    this.callbackUrl,
    required this.developerId,
    this.keyExpiresIn,
    this.name,
    required this.organizationId,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appFamily': ?appFamily,
      'appId': ?appId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'callbackUrl': ?callbackUrl,
      'developerId': developerId,
      'keyExpiresIn': ?keyExpiresIn,
      'name': ?name,
      'organizationId': organizationId,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory DeveloperAppArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperAppArgs(
      apiProducts: map['apiProducts'] == null ? null : ((map['apiProducts'] as List).cast<String>()).input(),
      appFamily: map['appFamily'] == null ? null : (map['appFamily'] as String).input(),
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(map['attributes'], (value) => GoogleCloudApigeeV1Attribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      callbackUrl: map['callbackUrl'] == null ? null : (map['callbackUrl'] as String).input(),
      developerId: (map['developerId'] as String).input(),
      keyExpiresIn: map['keyExpiresIn'] == null ? null : (map['keyExpiresIn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

