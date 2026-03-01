// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthorizedOrgsDesc resources.
class AuthorizedOrgsDescState {
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
  /// Time the AuthorizedOrgsDesc was created in UTC.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? parent;
  /// Time the AuthorizedOrgsDesc was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AuthorizedOrgsDescState].
  /// [assetType] The type of entities that need to use the authorization relationship during
  /// [authorizationDirection] The direction of the authorization relationship between this organization
  /// [authorizationType] A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// [createTime] Time the AuthorizedOrgsDesc was created in UTC.
  /// [name] Resource name for the `AuthorizedOrgsDesc`. Format:
  /// [orgs] The list of organization ids in this AuthorizedOrgsDesc.
  /// [parent] Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  /// [updateTime] Time the AuthorizedOrgsDesc was updated in UTC.
  AuthorizedOrgsDescState({
    pulumi.Output<String>? assetType,
    pulumi.Output<String>? authorizationDirection,
    pulumi.Output<String>? authorizationType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? orgs,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? updateTime,
  }) :
      assetType = pulumi.Input.asOptionalInput<String>(assetType),
      authorizationDirection = pulumi.Input.asOptionalInput<String>(authorizationDirection),
      authorizationType = pulumi.Input.asOptionalInput<String>(authorizationType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgs = pulumi.Input.asOptionalInput<List<String>>(orgs),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetType': ?assetType,
      'authorizationDirection': ?authorizationDirection,
      'authorizationType': ?authorizationType,
      'createTime': ?createTime,
      'name': ?name,
      'orgs': ?orgs,
      'parent': ?parent,
      'updateTime': ?updateTime,
    };
  }

  factory AuthorizedOrgsDescState.fromMap(Map<String, dynamic> map) {
    return AuthorizedOrgsDescState(
      assetType: map['assetType'] == null ? null : pulumi.Output.create<String>(map['assetType'] as String),
      authorizationDirection: map['authorizationDirection'] == null ? null : pulumi.Output.create<String>(map['authorizationDirection'] as String),
      authorizationType: map['authorizationType'] == null ? null : pulumi.Output.create<String>(map['authorizationType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgs: map['orgs'] == null ? null : pulumi.Output.create<List<String>>((map['orgs'] as List).cast<String>()),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

