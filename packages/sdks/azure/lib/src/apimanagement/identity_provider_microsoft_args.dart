// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_microsoft_identity_provider_microsoft_args_doc}
/// The set of arguments for IdentityProviderMicrosoft.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_microsoft_identity_provider_microsoft_args_doc}
class IdentityProviderMicrosoftArgs {
  /// The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// Client Id of the Azure AD Application.
  final pulumi.Input<String> clientId;
  /// Client secret of the Azure AD Application.
  final pulumi.Input<String> clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IdentityProviderMicrosoftArgs].
  /// [apiManagementName] The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] Client Id of the Azure AD Application.
  /// [clientSecret] Client secret of the Azure AD Application.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  IdentityProviderMicrosoftArgs({
    required this.apiManagementName,
    required this.clientId,
    required this.clientSecret,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IdentityProviderMicrosoftArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderMicrosoftArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

