// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_open_id_connect_provider_open_id_connect_provider_args_doc}
/// The set of arguments for OpenIdConnectProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_open_id_connect_provider_open_id_connect_provider_args_doc}
class OpenIdConnectProviderArgs {
  /// The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The Client ID used for the Client Application.
  final pulumi.Input<String> clientId;
  /// The Client Secret used for the Client Application.
  final pulumi.Input<String> clientSecret;
  /// A description of this OpenID Connect Provider.
  final pulumi.Input<String>? description;
  /// A user-friendly name for this OpenID Connect Provider.
  final pulumi.Input<String> displayName;
  /// The URI of the Metadata endpoint.
  final pulumi.Input<String> metadataEndpoint;
  /// the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [OpenIdConnectProviderArgs].
  /// [apiManagementName] The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] The Client ID used for the Client Application.
  /// [clientSecret] The Client Secret used for the Client Application.
  /// [description] A description of this OpenID Connect Provider.
  /// [displayName] A user-friendly name for this OpenID Connect Provider.
  /// [metadataEndpoint] The URI of the Metadata endpoint.
  /// [name] the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  OpenIdConnectProviderArgs({
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> clientId,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> metadataEndpoint,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      metadataEndpoint = pulumi.Input.asInput<String>(metadataEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'description': ?description,
      'displayName': displayName,
      'metadataEndpoint': metadataEndpoint,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory OpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderArgs(
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      metadataEndpoint: pulumi.Output.create<String>(map['metadataEndpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

