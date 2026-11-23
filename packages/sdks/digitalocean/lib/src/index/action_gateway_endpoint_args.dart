// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_endpoint_insights.dart';
import 'action_gateway_endpoint_version.dart';

/// {@template pulumi_index_action_gateway_endpoint_action_gateway_endpoint_args_doc}
/// The set of arguments for ActionGatewayEndpoint.
/// {@endtemplate}
/// {@macro pulumi_index_action_gateway_endpoint_action_gateway_endpoint_args_doc}
class ActionGatewayEndpointArgs {
  /// Insights consent, which applies to every version of the endpoint. See Insights below.
  final pulumi.Input<ActionGatewayEndpointInsights?>? insights;
  /// The name of the endpoint, unique among your team's active endpoints. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. Changing the name renames the endpoint in place.
  final pulumi.Input<String?>? name;
  /// The version the configuration describes. See Version below. Changing it publishes a new head version.
  final pulumi.Input<ActionGatewayEndpointVersion> version;

  /// Creates a new [ActionGatewayEndpointArgs].
  /// [insights] Insights consent, which applies to every version of the endpoint. See Insights below.
  /// [name] The name of the endpoint, unique among your team's active endpoints. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. Changing the name renames the endpoint in place.
  /// [version] The version the configuration describes. See Version below. Changing it publishes a new head version.
  const ActionGatewayEndpointArgs({
    this.insights,
    this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insights': ?pulumi.Input.mapOptionalInputValue<ActionGatewayEndpointInsights, Map<String, dynamic>>(insights, (value) => value.toMap()),
      'name': ?name,
      'version': pulumi.Input.mapInputValue<ActionGatewayEndpointVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory ActionGatewayEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointArgs(
      insights: (() { final guardedValue = map['insights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayEndpointInsights.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(ActionGatewayEndpointVersion.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}
