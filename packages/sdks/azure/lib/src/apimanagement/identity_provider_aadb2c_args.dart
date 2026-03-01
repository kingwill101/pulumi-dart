// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_aadb2c_identity_provider_aadb2c_args_doc}
/// The set of arguments for IdentityProviderAadb2c.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_aadb2c_identity_provider_aadb2c_args_doc}
class IdentityProviderAadb2cArgs {
  /// The allowed AAD tenant, usually your B2C tenant domain.
  final pulumi.Input<String> allowedTenant;
  /// The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain.
  final pulumi.Input<String> authority;
  /// Client ID of the Application in your B2C tenant.
  final pulumi.Input<String> clientId;
  /// The client library to be used in the Azure AD B2C Identity Provider.
  final pulumi.Input<String>? clientLibrary;
  /// Client secret of the Application in your B2C tenant.
  final pulumi.Input<String> clientSecret;
  /// Password reset Policy Name.
  final pulumi.Input<String>? passwordResetPolicy;
  /// Profile editing Policy Name.
  final pulumi.Input<String>? profileEditingPolicy;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Signin Policy Name.
  final pulumi.Input<String> signinPolicy;
  /// The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain.
  final pulumi.Input<String> signinTenant;
  /// Signup Policy Name.
  final pulumi.Input<String> signupPolicy;

  /// Creates a new [IdentityProviderAadb2cArgs].
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
  IdentityProviderAadb2cArgs({
    required pulumi.Output<String> allowedTenant,
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> authority,
    required pulumi.Output<String> clientId,
    pulumi.Output<String>? clientLibrary,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<String>? passwordResetPolicy,
    pulumi.Output<String>? profileEditingPolicy,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> signinPolicy,
    required pulumi.Output<String> signinTenant,
    required pulumi.Output<String> signupPolicy,
  }) :
      allowedTenant = pulumi.Input.asInput<String>(allowedTenant),
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      authority = pulumi.Input.asInput<String>(authority),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientLibrary = pulumi.Input.asOptionalInput<String>(clientLibrary),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      passwordResetPolicy = pulumi.Input.asOptionalInput<String>(passwordResetPolicy),
      profileEditingPolicy = pulumi.Input.asOptionalInput<String>(profileEditingPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signinPolicy = pulumi.Input.asInput<String>(signinPolicy),
      signinTenant = pulumi.Input.asInput<String>(signinTenant),
      signupPolicy = pulumi.Input.asInput<String>(signupPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenant': allowedTenant,
      'apiManagementName': apiManagementName,
      'authority': authority,
      'clientId': clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': clientSecret,
      'passwordResetPolicy': ?passwordResetPolicy,
      'profileEditingPolicy': ?profileEditingPolicy,
      'resourceGroupName': resourceGroupName,
      'signinPolicy': signinPolicy,
      'signinTenant': signinTenant,
      'signupPolicy': signupPolicy,
    };
  }

  factory IdentityProviderAadb2cArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderAadb2cArgs(
      allowedTenant: pulumi.Output.create<String>(map['allowedTenant'] as String),
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      authority: pulumi.Output.create<String>(map['authority'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientLibrary: map['clientLibrary'] == null ? null : pulumi.Output.create<String>(map['clientLibrary'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      passwordResetPolicy: map['passwordResetPolicy'] == null ? null : pulumi.Output.create<String>(map['passwordResetPolicy'] as String),
      profileEditingPolicy: map['profileEditingPolicy'] == null ? null : pulumi.Output.create<String>(map['profileEditingPolicy'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signinPolicy: pulumi.Output.create<String>(map['signinPolicy'] as String),
      signinTenant: pulumi.Output.create<String>(map['signinTenant'] as String),
      signupPolicy: pulumi.Output.create<String>(map['signupPolicy'] as String),
    );
  }
}

