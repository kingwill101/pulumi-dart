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
    this.apiManagementName,
    this.clientId,
    this.clientSecret,
    this.description,
    this.displayName,
    this.metadataEndpoint,
    this.name,
    this.resourceGroupName,
  });

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
      apiManagementName: (() {
        final guardedValue = map['apiManagementName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadataEndpoint: (() {
        final guardedValue = map['metadataEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
