// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_app_group_app_args_doc}
/// The set of arguments for AppGroupApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_app_group_app_args_doc}
class AppGroupAppArgs {
  /// List of API products associated with the AppGroup app.
  final pulumi.Input<List<String>>? apiProducts;

  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  final pulumi.Input<String>? appGroup;

  /// Immutable. ID of the AppGroup app.
  final pulumi.Input<String>? appId;
  final pulumi.Input<String> appgroupId;

  /// List of attributes for the AppGroup app.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  final pulumi.Input<String>? callbackUrl;

  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;

  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  final pulumi.Input<List<String>>? scopes;

  /// Status of the App. Valid values include `approved` or `revoked`.
  final pulumi.Input<String>? status;

  /// Creates a new [AppGroupAppArgs].
  /// [apiProducts] List of API products associated with the AppGroup app.
  /// [appGroup] Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  /// [appId] Immutable. ID of the AppGroup app.
  /// [appgroupId] Required.
  /// [attributes] List of attributes for the AppGroup app.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  /// [keyExpiresIn] Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [name] Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  /// [organizationId] Required.
  /// [scopes] Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  /// [status] Status of the App. Valid values include `approved` or `revoked`.
  AppGroupAppArgs({
    this.apiProducts,
    this.appGroup,
    this.appId,
    required this.appgroupId,
    this.attributes,
    this.callbackUrl,
    this.keyExpiresIn,
    this.name,
    required this.organizationId,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiProducts': ?apiProducts,
      'appGroup': ?appGroup,
      'appId': ?appId,
      'appgroupId': appgroupId,
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1Attribute>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1Attribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'callbackUrl': ?callbackUrl,
      'keyExpiresIn': ?keyExpiresIn,
      'name': ?name,
      'organizationId': organizationId,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory AppGroupAppArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupAppArgs(
      apiProducts: (() {
        final guardedValue = map['apiProducts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      appGroup: (() {
        final guardedValue = map['appGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appId: (() {
        final guardedValue = map['appId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appgroupId: pulumi.Input.fromValue(map['appgroupId'] as String),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
            guardedValue,
            (value) => GoogleCloudApigeeV1Attribute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      callbackUrl: (() {
        final guardedValue = map['callbackUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyExpiresIn: (() {
        final guardedValue = map['keyExpiresIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
