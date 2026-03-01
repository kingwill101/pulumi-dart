// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_aad_identity_provider_aad_args_doc}
/// The set of arguments for IdentityProviderAad.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_aad_identity_provider_aad_args_doc}
class IdentityProviderAadArgs {
  /// List of allowed AAD Tenants.
  final pulumi.Input<List<String>> allowedTenants;
  /// The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// Client Id of the Application in the AAD Identity Provider.
  final pulumi.Input<String> clientId;
  /// The client library to be used in the AAD Identity Provider.
  final pulumi.Input<String>? clientLibrary;
  /// Client secret of the Application in the AAD Identity Provider.
  final pulumi.Input<String> clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The AAD Tenant to use instead of Common when logging into Active Directory.
  final pulumi.Input<String>? signinTenant;

  /// Creates a new [IdentityProviderAadArgs].
  /// [allowedTenants] List of allowed AAD Tenants.
  /// [apiManagementName] The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] Client Id of the Application in the AAD Identity Provider.
  /// [clientLibrary] The client library to be used in the AAD Identity Provider.
  /// [clientSecret] Client secret of the Application in the AAD Identity Provider.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [signinTenant] The AAD Tenant to use instead of Common when logging into Active Directory.
  IdentityProviderAadArgs({
    required pulumi.Output<List<String>> allowedTenants,
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> clientId,
    pulumi.Output<String>? clientLibrary,
    required pulumi.Output<String> clientSecret,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? signinTenant,
  }) :
      allowedTenants = pulumi.Input.asInput<List<String>>(allowedTenants),
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientLibrary = pulumi.Input.asOptionalInput<String>(clientLibrary),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signinTenant = pulumi.Input.asOptionalInput<String>(signinTenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenants': allowedTenants,
      'apiManagementName': apiManagementName,
      'clientId': clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': clientSecret,
      'resourceGroupName': resourceGroupName,
      'signinTenant': ?signinTenant,
    };
  }

  factory IdentityProviderAadArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderAadArgs(
      allowedTenants: pulumi.Output.create<List<String>>((map['allowedTenants'] as List).cast<String>()),
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientLibrary: map['clientLibrary'] == null ? null : pulumi.Output.create<String>(map['clientLibrary'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signinTenant: map['signinTenant'] == null ? null : pulumi.Output.create<String>(map['signinTenant'] as String),
    );
  }
}

