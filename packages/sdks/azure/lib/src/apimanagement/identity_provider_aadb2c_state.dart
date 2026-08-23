// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProviderAadb2c resources.
class IdentityProviderAadb2cState {
  /// The allowed AAD tenant, usually your B2C tenant domain.
  final pulumi.Input<String>? allowedTenant;
  /// The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain.
  final pulumi.Input<String>? authority;
  /// Client ID of the Application in your B2C tenant.
  final pulumi.Input<String>? clientId;
  /// The client library to be used in the Azure AD B2C Identity Provider.
  final pulumi.Input<String>? clientLibrary;
  /// Client secret of the Application in your B2C tenant.
  final pulumi.Input<String>? clientSecret;
  /// Password reset Policy Name.
  final pulumi.Input<String>? passwordResetPolicy;
  /// Profile editing Policy Name.
  final pulumi.Input<String>? profileEditingPolicy;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Signin Policy Name.
  final pulumi.Input<String>? signinPolicy;
  /// The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain.
  final pulumi.Input<String>? signinTenant;
  /// Signup Policy Name.
  final pulumi.Input<String>? signupPolicy;

  /// Creates a new [IdentityProviderAadb2cState].
  /// [allowedTenant] The allowed AAD tenant, usually your B2C tenant domain.
  /// [apiManagementName] The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  /// [authority] OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain.
  /// [clientId] Client ID of the Application in your B2C tenant.
  /// [clientLibrary] The client library to be used in the Azure AD B2C Identity Provider.
  /// [clientSecret] Client secret of the Application in your B2C tenant.
  /// [passwordResetPolicy] Password reset Policy Name.
  /// [profileEditingPolicy] Profile editing Policy Name.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [signinPolicy] Signin Policy Name.
  /// [signinTenant] The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain.
  /// [signupPolicy] Signup Policy Name.
  const IdentityProviderAadb2cState({
    this.allowedTenant,
    this.apiManagementName,
    this.authority,
    this.clientId,
    this.clientLibrary,
    this.clientSecret,
    this.passwordResetPolicy,
    this.profileEditingPolicy,
    this.resourceGroupName,
    this.signinPolicy,
    this.signinTenant,
    this.signupPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenant': ?allowedTenant,
      'apiManagementName': ?apiManagementName,
      'authority': ?authority,
      'clientId': ?clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': ?clientSecret,
      'passwordResetPolicy': ?passwordResetPolicy,
      'profileEditingPolicy': ?profileEditingPolicy,
      'resourceGroupName': ?resourceGroupName,
      'signinPolicy': ?signinPolicy,
      'signinTenant': ?signinTenant,
      'signupPolicy': ?signupPolicy,
    };
  }

  factory IdentityProviderAadb2cState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderAadb2cState(
      allowedTenant: (() { final guardedValue = map['allowedTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientLibrary: (() { final guardedValue = map['clientLibrary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordResetPolicy: (() { final guardedValue = map['passwordResetPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileEditingPolicy: (() { final guardedValue = map['profileEditingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signinPolicy: (() { final guardedValue = map['signinPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signinTenant: (() { final guardedValue = map['signinTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signupPolicy: (() { final guardedValue = map['signupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
