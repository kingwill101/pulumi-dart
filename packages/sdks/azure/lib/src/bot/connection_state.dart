// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The Client ID that will be used to authenticate with the service provider.
  final pulumi.Input<String>? clientId;
  /// The Client Secret that will be used to authenticate with the service provider.
  final pulumi.Input<String>? clientSecret;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique.
  final pulumi.Input<String>? name;
  /// A map of additional parameters to apply to the connection.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Scopes at which the connection should be applied.
  final pulumi.Input<String>? scopes;
  /// The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceProviderName;

  /// Creates a new [ConnectionState].
  /// [botName] The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created.
  /// [clientId] The Client ID that will be used to authenticate with the service provider.
  /// [clientSecret] The Client Secret that will be used to authenticate with the service provider.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique.
  /// [parameters] A map of additional parameters to apply to the connection.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created.
  /// [scopes] The Scopes at which the connection should be applied.
  /// [serviceProviderName] The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created.
  ConnectionState({
    this.botName,
    this.clientId,
    this.clientSecret,
    this.location,
    this.name,
    this.parameters,
    this.resourceGroupName,
    this.scopes,
    this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'location': ?location,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': ?resourceGroupName,
      'scopes': ?scopes,
      'serviceProviderName': ?serviceProviderName,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      botName: map['botName'] == null ? null : (map['botName']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      scopes: map['scopes'] == null ? null : (map['scopes']! as String).input(),
      serviceProviderName: map['serviceProviderName'] == null ? null : (map['serviceProviderName']! as String).input(),
    );
  }
}

