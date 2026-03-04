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
    this.apiManagementName,
    this.appId,
    this.appSecret,
    this.resourceGroupName,
  });

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
      apiManagementName: (() {
        final guardedValue = map['apiManagementName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appId: (() {
        final guardedValue = map['appId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appSecret: (() {
        final guardedValue = map['appSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
