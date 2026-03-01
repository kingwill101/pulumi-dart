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
    pulumi.Output<List<String>>? apiProducts,
    pulumi.Output<String>? appFamily,
    pulumi.Output<String>? appId,
    pulumi.Output<List<GoogleCloudApigeeV1Attribute>>? attributes,
    pulumi.Output<String>? callbackUrl,
    required pulumi.Output<String> developerId,
    pulumi.Output<String>? keyExpiresIn,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    pulumi.Output<List<String>>? scopes,
    pulumi.Output<String>? status,
  }) :
      apiProducts = pulumi.Input.asOptionalInput<List<String>>(apiProducts),
      appFamily = pulumi.Input.asOptionalInput<String>(appFamily),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      attributes = pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(attributes),
      callbackUrl = pulumi.Input.asOptionalInput<String>(callbackUrl),
      developerId = pulumi.Input.asInput<String>(developerId),
      keyExpiresIn = pulumi.Input.asOptionalInput<String>(keyExpiresIn),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      apiProducts: map['apiProducts'] == null ? null : pulumi.Output.create<List<String>>((map['apiProducts'] as List).cast<String>()),
      appFamily: map['appFamily'] == null ? null : pulumi.Output.create<String>(map['appFamily'] as String),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<GoogleCloudApigeeV1Attribute>>(pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(map['attributes'], (value) => GoogleCloudApigeeV1Attribute.fromMap((value as Map).cast<String, dynamic>()))),
      callbackUrl: map['callbackUrl'] == null ? null : pulumi.Output.create<String>(map['callbackUrl'] as String),
      developerId: pulumi.Output.create<String>(map['developerId'] as String),
      keyExpiresIn: map['keyExpiresIn'] == null ? null : pulumi.Output.create<String>(map['keyExpiresIn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

