// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_google_identity_provider_google_args_doc}
/// The set of arguments for IdentityProviderGoogle.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_google_identity_provider_google_args_doc}
class IdentityProviderGoogleArgs {
  /// The Name of the API Management Service where this Google Identity Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// Client Id for Google Sign-in.
  final pulumi.Input<String> clientId;
  /// Client secret for Google Sign-in.
  final pulumi.Input<String> clientSecret;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IdentityProviderGoogleArgs].
  /// [apiManagementName] The Name of the API Management Service where this Google Identity Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] Client Id for Google Sign-in.
  /// [clientSecret] Client secret for Google Sign-in.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  const IdentityProviderGoogleArgs({
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

  factory IdentityProviderGoogleArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderGoogleArgs(
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
