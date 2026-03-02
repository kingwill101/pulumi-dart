// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_authorized_orgs_desc_authorized_orgs_desc_args_doc}
/// The set of arguments for AuthorizedOrgsDesc.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_authorized_orgs_desc_authorized_orgs_desc_args_doc}
class AuthorizedOrgsDescArgs {
  /// The type of entities that need to use the authorization relationship during
  /// evaluation, such as a device. Valid values are "ASSET_TYPE_DEVICE" and
  /// "ASSET_TYPE_CREDENTIAL_STRENGTH".
  /// Possible values are: `ASSET_TYPE_DEVICE`, `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final pulumi.Input<String>? assetType;
  /// The direction of the authorization relationship between this organization
  /// and the organizations listed in the "orgs" field. The valid values for this
  /// field include the following:
  /// AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
  /// in the organizations listed in the `orgs` field.
  /// AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the `orgs`
  /// field to evaluate the traffic in this organization.
  /// For the authorization relationship to take effect, all of the organizations
  /// must authorize and specify the appropriate relationship direction. For
  /// example, if organization A authorized organization B and C to evaluate its
  /// traffic, by specifying "AUTHORIZATION_DIRECTION_TO" as the authorization
  /// direction, organizations B and C must specify
  /// "AUTHORIZATION_DIRECTION_FROM" as the authorization direction in their
  /// "AuthorizedOrgsDesc" resource.
  /// Possible values are: `AUTHORIZATION_DIRECTION_TO`, `AUTHORIZATION_DIRECTION_FROM`.
  final pulumi.Input<String>? authorizationDirection;
  /// A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// Possible values are: `AUTHORIZATION_TYPE_TRUST`.
  final pulumi.Input<String>? authorizationType;
  /// Resource name for the `AuthorizedOrgsDesc`. Format:
  /// `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`.
  /// The `authorized_orgs_desc` component must begin with a letter, followed by
  /// alphanumeric characters or `_`.
  /// After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  final pulumi.Input<String>? name;
  /// The list of organization ids in this AuthorizedOrgsDesc.
  /// Format: `organizations/<org_number>`
  /// Example: `organizations/123456`
  final pulumi.Input<List<String>>? orgs;
  /// Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  final pulumi.Input<String> parent;

  /// Creates a new [AuthorizedOrgsDescArgs].
  /// [assetType] The type of entities that need to use the authorization relationship during
  /// [authorizationDirection] The direction of the authorization relationship between this organization
  /// [authorizationType] A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// [name] Resource name for the `AuthorizedOrgsDesc`. Format:
  /// [orgs] The list of organization ids in this AuthorizedOrgsDesc.
  /// [parent] Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  AuthorizedOrgsDescArgs({
    this.assetType,
    this.authorizationDirection,
    this.authorizationType,
    this.name,
    this.orgs,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetType': ?assetType,
      'authorizationDirection': ?authorizationDirection,
      'authorizationType': ?authorizationType,
      'name': ?name,
      'orgs': ?orgs,
      'parent': parent,
    };
  }

  factory AuthorizedOrgsDescArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedOrgsDescArgs(
      assetType: map['assetType'] == null ? null : (map['assetType']! as String).input(),
      authorizationDirection: map['authorizationDirection'] == null ? null : (map['authorizationDirection']! as String).input(),
      authorizationType: map['authorizationType'] == null ? null : (map['authorizationType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgs: map['orgs'] == null ? null : ((map['orgs']! as List).cast<String>()).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}

