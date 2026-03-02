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
  IdentityProviderAadb2cState({
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
      allowedTenant: map['allowedTenant'] == null ? null : (map['allowedTenant']! as String).input(),
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      authority: map['authority'] == null ? null : (map['authority']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientLibrary: map['clientLibrary'] == null ? null : (map['clientLibrary']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      passwordResetPolicy: map['passwordResetPolicy'] == null ? null : (map['passwordResetPolicy']! as String).input(),
      profileEditingPolicy: map['profileEditingPolicy'] == null ? null : (map['profileEditingPolicy']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      signinPolicy: map['signinPolicy'] == null ? null : (map['signinPolicy']! as String).input(),
      signinTenant: map['signinTenant'] == null ? null : (map['signinTenant']! as String).input(),
      signupPolicy: map['signupPolicy'] == null ? null : (map['signupPolicy']! as String).input(),
    );
  }
}

