// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OpenIdConnectProvider resources.
class OpenIdConnectProviderState {
  /// The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The Client ID used for the Client Application.
  final pulumi.Input<String>? clientId;
  /// The Client Secret used for the Client Application.
  final pulumi.Input<String>? clientSecret;
  /// A description of this OpenID Connect Provider.
  final pulumi.Input<String>? description;
  /// A user-friendly name for this OpenID Connect Provider.
  final pulumi.Input<String>? displayName;
  /// The URI of the Metadata endpoint.
  final pulumi.Input<String>? metadataEndpoint;
  /// the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [OpenIdConnectProviderState].
  /// [apiManagementName] The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created.
  /// [clientId] The Client ID used for the Client Application.
  /// [clientSecret] The Client Secret used for the Client Application.
  /// [description] A description of this OpenID Connect Provider.
  /// [displayName] A user-friendly name for this OpenID Connect Provider.
  /// [metadataEndpoint] The URI of the Metadata endpoint.
  /// [name] the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  OpenIdConnectProviderState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? metadataEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      metadataEndpoint = pulumi.Input.asOptionalInput<String>(metadataEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'description': ?description,
      'displayName': ?displayName,
      'metadataEndpoint': ?metadataEndpoint,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory OpenIdConnectProviderState.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      metadataEndpoint: map['metadataEndpoint'] == null ? null : pulumi.Output.create<String>(map['metadataEndpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

