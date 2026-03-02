// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProviderMicrosoft resources.
class IdentityProviderMicrosoftState {
  /// The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// Client Id of the Azure AD Application.
  final pulumi.Input<String>? clientId;
  /// Client secret of the Azure AD Application.
  final pulumi.Input<String>? clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IdentityProviderMicrosoftState].
  /// [apiManagementName] The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] Client Id of the Azure AD Application.
  /// [clientSecret] Client secret of the Azure AD Application.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  IdentityProviderMicrosoftState({
    this.apiManagementName,
    this.clientId,
    this.clientSecret,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IdentityProviderMicrosoftState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderMicrosoftState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

