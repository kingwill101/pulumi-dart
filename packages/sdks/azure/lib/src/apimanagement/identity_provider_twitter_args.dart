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
    required pulumi.Output<String> apiKey,
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> apiSecretKey,
    required pulumi.Output<String> resourceGroupName,
  }) :
      apiKey = pulumi.Input.asInput<String>(apiKey),
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      apiSecretKey = pulumi.Input.asInput<String>(apiSecretKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      apiKey: pulumi.Output.create<String>(map['apiKey'] as String),
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiSecretKey: pulumi.Output.create<String>(map['apiSecretKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

