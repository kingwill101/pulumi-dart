// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProviderFacebook resources.
class IdentityProviderFacebookState {
  /// The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// App ID for Facebook.
  final pulumi.Input<String>? appId;
  /// App Secret for Facebook.
  final pulumi.Input<String>? appSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IdentityProviderFacebookState].
  /// [apiManagementName] The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created.
  /// [appId] App ID for Facebook.
  /// [appSecret] App Secret for Facebook.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  IdentityProviderFacebookState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? appId,
    pulumi.Output<String>? appSecret,
    pulumi.Output<String>? resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      appSecret = pulumi.Input.asOptionalInput<String>(appSecret),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'appId': ?appId,
      'appSecret': ?appSecret,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IdentityProviderFacebookState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderFacebookState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      appSecret: map['appSecret'] == null ? null : pulumi.Output.create<String>(map['appSecret'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

