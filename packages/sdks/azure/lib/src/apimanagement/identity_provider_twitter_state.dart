// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProviderTwitter resources.
class IdentityProviderTwitterState {
  /// App Consumer API key for Twitter.
  final pulumi.Input<String>? apiKey;
  /// The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// App Consumer API secret key for Twitter.
  final pulumi.Input<String>? apiSecretKey;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IdentityProviderTwitterState].
  /// [apiKey] App Consumer API key for Twitter.
  /// [apiManagementName] The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created.
  /// [apiSecretKey] App Consumer API secret key for Twitter.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  IdentityProviderTwitterState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? apiSecretKey,
    pulumi.Output<String>? resourceGroupName,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      apiSecretKey = pulumi.Input.asOptionalInput<String>(apiSecretKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiManagementName': ?apiManagementName,
      'apiSecretKey': ?apiSecretKey,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IdentityProviderTwitterState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderTwitterState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiSecretKey: map['apiSecretKey'] == null ? null : pulumi.Output.create<String>(map['apiSecretKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

