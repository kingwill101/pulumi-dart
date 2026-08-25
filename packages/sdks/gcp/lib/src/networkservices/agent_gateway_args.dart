// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_gateway_google_managed.dart';
import 'agent_gateway_network_config.dart';
import 'agent_gateway_self_managed.dart';

/// {@template pulumi_networkservices_agent_gateway_agent_gateway_args_doc}
/// The set of arguments for AgentGateway.
/// {@endtemplate}
/// {@macro pulumi_networkservices_agent_gateway_agent_gateway_args_doc}
class AgentGatewayArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// Configuration for Google Managed deployment mode.
  /// Proxy is orchestrated and managed by GoogleCloud in a tenant project.
  /// Structure is documented below.
  final pulumi.Input<AgentGatewayGoogleManaged?>? googleManaged;
  /// Set of label tags associated with the AgentGateway resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the agent gateway.
  final pulumi.Input<String> location;
  /// Name of the AgentGateway resource.
  final pulumi.Input<String?>? name;
  /// Network configuration for the AgentGateway.
  /// Structure is documented below.
  final pulumi.Input<AgentGatewayNetworkConfig?>? networkConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// (Optional, Deprecated)
  /// List of protocols supported by an Agent Gateway.
  /// Each value may be one of: `MCP`.
  ///
  /// &gt; **Warning:** `protocols` is deprecated and will be removed in a future major release.
  final pulumi.Input<List<String>?>? protocols;
  /// A list of Agent registries containing the agents, MCP servers and tools governed by the Agent Gateway.
  /// Note: Currently limited to project-scoped registries Must be of format
  /// `//agentregistry.googleapis.com/{version}/projects/{{project}}/locations/{{location}}`
  final pulumi.Input<List<String>?>? registries;
  /// Configuration for Self Managed deployment mode.
  /// Attach to existing Application Load Balancers or Secure Web Proxies.
  /// Structure is documented below.
  final pulumi.Input<AgentGatewaySelfManaged?>? selfManaged;

  /// Creates a new [AgentGatewayArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [googleManaged] Configuration for Google Managed deployment mode.
  /// [labels] Set of label tags associated with the AgentGateway resource.
  /// [location] The location of the agent gateway.
  /// [name] Name of the AgentGateway resource.
  /// [networkConfig] Network configuration for the AgentGateway.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocols] (Optional, Deprecated)
  /// [registries] A list of Agent registries containing the agents, MCP servers and tools governed by the Agent Gateway.
  /// [selfManaged] Configuration for Self Managed deployment mode.
  const AgentGatewayArgs({
    this.deletionPolicy,
    this.description,
    this.googleManaged,
    this.labels,
    required this.location,
    this.name,
    this.networkConfig,
    this.project,
    this.protocols,
    this.registries,
    this.selfManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'googleManaged': ?pulumi.Input.mapOptionalInputValue<AgentGatewayGoogleManaged, Map<String, dynamic>>(googleManaged, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<AgentGatewayNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'protocols': ?protocols,
      'registries': ?registries,
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<AgentGatewaySelfManaged, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
    };
  }

  factory AgentGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AgentGatewayArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleManaged: (() { final guardedValue = map['googleManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewayGoogleManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewayNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selfManaged: (() { final guardedValue = map['selfManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewaySelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
