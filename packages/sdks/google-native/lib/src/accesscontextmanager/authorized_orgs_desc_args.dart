// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_orgs_desc_asset_type.dart';
import 'authorized_orgs_desc_authorization_direction.dart';
import 'authorized_orgs_desc_authorization_type.dart';

/// {@template pulumi_accesscontextmanager_v1_authorized_orgs_desc_args_doc}
/// The set of arguments for AuthorizedOrgsDesc.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_authorized_orgs_desc_args_doc}
class AuthorizedOrgsDescArgs {
  final pulumi.Input<String> accessPolicyId;
  /// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final pulumi.Input<AuthorizedOrgsDescAssetType>? assetType;
  /// The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  final pulumi.Input<AuthorizedOrgsDescAuthorizationDirection>? authorizationDirection;
  /// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  final pulumi.Input<AuthorizedOrgsDescAuthorizationType>? authorizationType;
  /// Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  final pulumi.Input<String>? name;
  /// The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  final pulumi.Input<List<String>>? orgs;

  /// Creates a new [AuthorizedOrgsDescArgs].
  /// [accessPolicyId] Required.
  /// [assetType] The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  /// [authorizationDirection] The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  /// [authorizationType] A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  /// [name] Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  /// [orgs] The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  AuthorizedOrgsDescArgs({
    required this.accessPolicyId,
    this.assetType,
    this.authorizationDirection,
    this.authorizationType,
    this.name,
    this.orgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'assetType': ?pulumi.Input.mapOptionalInputValue<AuthorizedOrgsDescAssetType, String>(assetType, (value) => value.wireValue),
      'authorizationDirection': ?pulumi.Input.mapOptionalInputValue<AuthorizedOrgsDescAuthorizationDirection, String>(authorizationDirection, (value) => value.wireValue),
      'authorizationType': ?pulumi.Input.mapOptionalInputValue<AuthorizedOrgsDescAuthorizationType, String>(authorizationType, (value) => value.wireValue),
      'name': ?name,
      'orgs': ?orgs,
    };
  }

  factory AuthorizedOrgsDescArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedOrgsDescArgs(
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
      assetType: (() { final guardedValue = map['assetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizedOrgsDescAssetType.fromValue(guardedValue as String)); })(),
      authorizationDirection: (() { final guardedValue = map['authorizationDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizedOrgsDescAuthorizationDirection.fromValue(guardedValue as String)); })(),
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizedOrgsDescAuthorizationType.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgs: (() { final guardedValue = map['orgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

