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
  ConnectionArgs({
    required pulumi.Output<String> botName,
    required pulumi.Output<String> clientId,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scopes,
    required pulumi.Output<String> serviceProviderName,
  }) :
      botName = pulumi.Input.asInput<String>(botName),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopes = pulumi.Input.asOptionalInput<String>(scopes),
      serviceProviderName = pulumi.Input.asInput<String>(serviceProviderName);

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
      botName: pulumi.Output.create<String>(map['botName'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<String>(map['scopes'] as String),
      serviceProviderName: pulumi.Output.create<String>(map['serviceProviderName'] as String),
    );
  }
}

