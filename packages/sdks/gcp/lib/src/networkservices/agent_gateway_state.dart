// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_gateway_agent_gateway_card.dart';
import 'agent_gateway_google_managed.dart';
import 'agent_gateway_network_config.dart';
import 'agent_gateway_self_managed.dart';

/// Input properties used for looking up and filtering AgentGateway resources.
class AgentGatewayState {
  /// AgentGatewayOutputCard contains informational output-only fields.
  /// Structure is documented below.
  final pulumi.Input<List<AgentGatewayAgentGatewayCard>?>? agentGatewayCards;
  /// The timestamp when the resource was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Etag of the resource.
  /// If this is provided, it must match the server's etag. If the provided etag
  /// does not match the server's etag, the request will fail with a 409 ABORTED
  /// error.
  final pulumi.Input<String?>? etag;
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
  final pulumi.Input<String?>? location;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// A list of Agent registries containing the agents, MCP servers and tools governed by the Agent Gateway.
  /// Note: Currently limited to project-scoped registries Must be of format
  /// `//agentregistry.googleapis.com/{version}/projects/{{project}}/locations/{{location}}`
  final pulumi.Input<List<String>?>? registries;
  /// Configuration for Self Managed deployment mode.
  /// Attach to existing Application Load Balancers or Secure Web Proxies.
  /// Structure is documented below.
  final pulumi.Input<AgentGatewaySelfManaged?>? selfManaged;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AgentGatewayState].
  /// [agentGatewayCards] AgentGatewayOutputCard contains informational output-only fields.
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Etag of the resource.
  /// [googleManaged] Configuration for Google Managed deployment mode.
  /// [labels] Set of label tags associated with the AgentGateway resource.
  /// [location] The location of the agent gateway.
  /// [name] Name of the AgentGateway resource.
  /// [networkConfig] Network configuration for the AgentGateway.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocols] (Optional, Deprecated)
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [registries] A list of Agent registries containing the agents, MCP servers and tools governed by the Agent Gateway.
  /// [selfManaged] Configuration for Self Managed deployment mode.
  /// [updateTime] The timestamp when the resource was updated.
  const AgentGatewayState({
    this.agentGatewayCards,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.googleManaged,
    this.labels,
    this.location,
    this.name,
    this.networkConfig,
    this.project,
    this.protocols,
    this.pulumiLabels,
    this.registries,
    this.selfManaged,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGatewayCards': ?pulumi.Input.mapOptionalInputValue<List<AgentGatewayAgentGatewayCard>, List<Map<String, dynamic>>>(agentGatewayCards, (value) => pulumi.Input.encodeList<AgentGatewayAgentGatewayCard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'googleManaged': ?pulumi.Input.mapOptionalInputValue<AgentGatewayGoogleManaged, Map<String, dynamic>>(googleManaged, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<AgentGatewayNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'protocols': ?protocols,
      'pulumiLabels': ?pulumiLabels,
      'registries': ?registries,
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<AgentGatewaySelfManaged, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory AgentGatewayState.fromMap(Map<String, dynamic> map) {
    return AgentGatewayState(
      agentGatewayCards: (() { final guardedValue = map['agentGatewayCards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentGatewayAgentGatewayCard>(guardedValue, (value) => AgentGatewayAgentGatewayCard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleManaged: (() { final guardedValue = map['googleManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewayGoogleManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewayNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selfManaged: (() { final guardedValue = map['selfManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewaySelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
