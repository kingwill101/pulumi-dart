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
  final pulumi.Input<String?>? clientLibrary;
  /// Client secret of the Application in the AAD Identity Provider.
  final pulumi.Input<String> clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The AAD Tenant to use instead of Common when logging into Active Directory.
  final pulumi.Input<String?>? signinTenant;

  /// Creates a new [IdentityProviderAadArgs].
  /// [allowedTenants] List of allowed AAD Tenants.
  /// [apiManagementName] The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] Client Id of the Application in the AAD Identity Provider.
  /// [clientLibrary] The client library to be used in the AAD Identity Provider.
  /// [clientSecret] Client secret of the Application in the AAD Identity Provider.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [signinTenant] The AAD Tenant to use instead of Common when logging into Active Directory.
  const IdentityProviderAadArgs({
    required this.allowedTenants,
    required this.apiManagementName,
    required this.clientId,
    this.clientLibrary,
    required this.clientSecret,
    required this.resourceGroupName,
    this.signinTenant,
  });

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
      allowedTenants: pulumi.Input.fromValue((map['allowedTenants'] as List).cast<String>()),
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientLibrary: (() { final guardedValue = map['clientLibrary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      signinTenant: (() { final guardedValue = map['signinTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
