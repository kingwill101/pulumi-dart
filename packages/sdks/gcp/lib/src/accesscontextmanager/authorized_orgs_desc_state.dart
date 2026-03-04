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
  /// Format: `organizations/&lt;org_number&gt;`
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
    this.assetType,
    this.authorizationDirection,
    this.authorizationType,
    this.createTime,
    this.name,
    this.orgs,
    this.parent,
    this.updateTime,
  });

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
      assetType: (() {
        final guardedValue = map['assetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizationDirection: (() {
        final guardedValue = map['authorizationDirection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizationType: (() {
        final guardedValue = map['authorizationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgs: (() {
        final guardedValue = map['orgs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
