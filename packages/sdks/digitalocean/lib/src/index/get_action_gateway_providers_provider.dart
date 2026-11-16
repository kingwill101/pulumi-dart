// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_providers_provider_connection_parameter.dart';

class GetActionGatewayProvidersProvider {
  /// The credential kinds the provider accepts.
  final pulumi.Input<List<String>> authTypes;
  /// The parameters a connection to the provider accepts.
  final pulumi.Input<List<GetActionGatewayProvidersProviderConnectionParameter>> connectionParameters;
  /// The parameter's description.
  final pulumi.Input<String> description;
  /// The human-readable name of the provider.
  final pulumi.Input<String> displayName;
  /// The provider slug, used as `toolProvider` on connections.
  final pulumi.Input<String> name;
  /// The OAuth scopes the provider offers.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [GetActionGatewayProvidersProvider].
  /// [authTypes] The credential kinds the provider accepts.
  /// [connectionParameters] The parameters a connection to the provider accepts.
  /// [description] The parameter's description.
  /// [displayName] The human-readable name of the provider.
  /// [name] The provider slug, used as `toolProvider` on connections.
  /// [scopes] The OAuth scopes the provider offers.
  const GetActionGatewayProvidersProvider({
    required this.authTypes,
    required this.connectionParameters,
    required this.description,
    required this.displayName,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authTypes': authTypes,
      'connectionParameters': pulumi.Input.mapInputValue<List<GetActionGatewayProvidersProviderConnectionParameter>, List<Map<String, dynamic>>>(connectionParameters, (value) => pulumi.Input.encodeList<GetActionGatewayProvidersProviderConnectionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'displayName': displayName,
      'name': name,
      'scopes': scopes,
    };
  }

  factory GetActionGatewayProvidersProvider.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProvidersProvider(
      authTypes: pulumi.Input.fromValue((map['authTypes'] as List).cast<String>()),
      connectionParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayProvidersProviderConnectionParameter>(map['connectionParameters']!, (value) => GetActionGatewayProvidersProviderConnectionParameter.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
