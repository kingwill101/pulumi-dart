// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_bot_connection_connection_args_doc}
class ConnectionArgs {
  /// The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The Client ID that will be used to authenticate with the service provider.
  final pulumi.Input<String> clientId;
  /// The Client Secret that will be used to authenticate with the service provider.
  final pulumi.Input<String> clientSecret;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique.
  final pulumi.Input<String>? name;
  /// A map of additional parameters to apply to the connection.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Scopes at which the connection should be applied.
  final pulumi.Input<String>? scopes;
  /// The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceProviderName;

  /// Creates a new [ConnectionArgs].
  /// [botName] The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created.
  /// [clientId] The Client ID that will be used to authenticate with the service provider.
  /// [clientSecret] The Client Secret that will be used to authenticate with the service provider.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique.
  /// [parameters] A map of additional parameters to apply to the connection.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created.
  /// [scopes] The Scopes at which the connection should be applied.
  /// [serviceProviderName] The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created.
  const ConnectionArgs({
    required this.botName,
    required this.clientId,
    required this.clientSecret,
    this.location,
    this.name,
    this.parameters,
    required this.resourceGroupName,
    this.scopes,
    required this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'location': ?location,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'scopes': ?scopes,
      'serviceProviderName': serviceProviderName,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      botName: pulumi.Input.fromValue(map['botName'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProviderName: pulumi.Input.fromValue(map['serviceProviderName'] as String),
    );
  }
}
