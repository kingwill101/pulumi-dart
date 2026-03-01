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
    pulumi.Output<String>? allowedTenant,
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? authority,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientLibrary,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? passwordResetPolicy,
    pulumi.Output<String>? profileEditingPolicy,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? signinPolicy,
    pulumi.Output<String>? signinTenant,
    pulumi.Output<String>? signupPolicy,
  }) :
      allowedTenant = pulumi.Input.asOptionalInput<String>(allowedTenant),
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      authority = pulumi.Input.asOptionalInput<String>(authority),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientLibrary = pulumi.Input.asOptionalInput<String>(clientLibrary),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      passwordResetPolicy = pulumi.Input.asOptionalInput<String>(passwordResetPolicy),
      profileEditingPolicy = pulumi.Input.asOptionalInput<String>(profileEditingPolicy),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      signinPolicy = pulumi.Input.asOptionalInput<String>(signinPolicy),
      signinTenant = pulumi.Input.asOptionalInput<String>(signinTenant),
      signupPolicy = pulumi.Input.asOptionalInput<String>(signupPolicy);

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
      allowedTenant: map['allowedTenant'] == null ? null : pulumi.Output.create<String>(map['allowedTenant'] as String),
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      authority: map['authority'] == null ? null : pulumi.Output.create<String>(map['authority'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientLibrary: map['clientLibrary'] == null ? null : pulumi.Output.create<String>(map['clientLibrary'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      passwordResetPolicy: map['passwordResetPolicy'] == null ? null : pulumi.Output.create<String>(map['passwordResetPolicy'] as String),
      profileEditingPolicy: map['profileEditingPolicy'] == null ? null : pulumi.Output.create<String>(map['profileEditingPolicy'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signinPolicy: map['signinPolicy'] == null ? null : pulumi.Output.create<String>(map['signinPolicy'] as String),
      signinTenant: map['signinTenant'] == null ? null : pulumi.Output.create<String>(map['signinTenant'] as String),
      signupPolicy: map['signupPolicy'] == null ? null : pulumi.Output.create<String>(map['signupPolicy'] as String),
    );
  }
}

