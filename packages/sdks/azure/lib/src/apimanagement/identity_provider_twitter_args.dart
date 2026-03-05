// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_twitter_identity_provider_twitter_args_doc}
/// The set of arguments for IdentityProviderTwitter.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_twitter_identity_provider_twitter_args_doc}
class IdentityProviderTwitterArgs {
  /// App Consumer API key for Twitter.
  final pulumi.Input<String> apiKey;
  /// The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// App Consumer API secret key for Twitter.
  final pulumi.Input<String> apiSecretKey;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IdentityProviderTwitterArgs].
  /// [apiKey] App Consumer API key for Twitter.
  /// [apiManagementName] The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created.
  /// [apiSecretKey] App Consumer API secret key for Twitter.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  IdentityProviderTwitterArgs({
    required this.apiKey,
    required this.apiManagementName,
    required this.apiSecretKey,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'apiManagementName': apiManagementName,
      'apiSecretKey': apiSecretKey,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IdentityProviderTwitterArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderTwitterArgs(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      apiSecretKey: pulumi.Input.fromValue(map['apiSecretKey'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

