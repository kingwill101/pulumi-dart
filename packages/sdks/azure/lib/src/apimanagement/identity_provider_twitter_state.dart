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
    this.apiKey,
    this.apiManagementName,
    this.apiSecretKey,
    this.resourceGroupName,
  });

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
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiSecretKey: (() { final guardedValue = map['apiSecretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

