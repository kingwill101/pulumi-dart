// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProviderAad resources.
class IdentityProviderAadState {
  /// List of allowed AAD Tenants.
  final pulumi.Input<List<String>>? allowedTenants;
  /// The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// Client Id of the Application in the AAD Identity Provider.
  final pulumi.Input<String>? clientId;
  /// The client library to be used in the AAD Identity Provider.
  final pulumi.Input<String>? clientLibrary;
  /// Client secret of the Application in the AAD Identity Provider.
  final pulumi.Input<String>? clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The AAD Tenant to use instead of Common when logging into Active Directory.
  final pulumi.Input<String>? signinTenant;

  /// Creates a new [IdentityProviderAadState].
  /// [allowedTenants] List of allowed AAD Tenants.
  /// [apiManagementName] The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] Client Id of the Application in the AAD Identity Provider.
  /// [clientLibrary] The client library to be used in the AAD Identity Provider.
  /// [clientSecret] Client secret of the Application in the AAD Identity Provider.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [signinTenant] The AAD Tenant to use instead of Common when logging into Active Directory.
  IdentityProviderAadState({
    pulumi.Output<List<String>>? allowedTenants,
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientLibrary,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? signinTenant,
  }) :
      allowedTenants = pulumi.Input.asOptionalInput<List<String>>(allowedTenants),
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientLibrary = pulumi.Input.asOptionalInput<String>(clientLibrary),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      signinTenant = pulumi.Input.asOptionalInput<String>(signinTenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenants': ?allowedTenants,
      'apiManagementName': ?apiManagementName,
      'clientId': ?clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': ?clientSecret,
      'resourceGroupName': ?resourceGroupName,
      'signinTenant': ?signinTenant,
    };
  }

  factory IdentityProviderAadState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderAadState(
      allowedTenants: map['allowedTenants'] == null ? null : pulumi.Output.create<List<String>>((map['allowedTenants'] as List).cast<String>()),
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientLibrary: map['clientLibrary'] == null ? null : pulumi.Output.create<String>(map['clientLibrary'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signinTenant: map['signinTenant'] == null ? null : pulumi.Output.create<String>(map['signinTenant'] as String),
    );
  }
}

