// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_facebook_identity_provider_facebook_args_doc}
/// The set of arguments for IdentityProviderFacebook.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_facebook_identity_provider_facebook_args_doc}
class IdentityProviderFacebookArgs {
  /// The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// App ID for Facebook.
  final pulumi.Input<String> appId;
  /// App Secret for Facebook.
  final pulumi.Input<String> appSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IdentityProviderFacebookArgs].
  /// [apiManagementName] The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created.
  /// [appId] App ID for Facebook.
  /// [appSecret] App Secret for Facebook.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  IdentityProviderFacebookArgs({
    required this.apiManagementName,
    required this.appId,
    required this.appSecret,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'appId': appId,
      'appSecret': appSecret,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IdentityProviderFacebookArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderFacebookArgs(
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecret: pulumi.Input.fromValue(map['appSecret'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

