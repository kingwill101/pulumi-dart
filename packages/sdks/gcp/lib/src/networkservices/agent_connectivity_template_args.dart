// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connectivity_template_egress_network_config.dart';

/// {@template pulumi_networkservices_agent_connectivity_template_agent_connectivity_template_args_doc}
/// The set of arguments for AgentConnectivityTemplate.
/// {@endtemplate}
/// {@macro pulumi_networkservices_agent_connectivity_template_agent_connectivity_template_args_doc}
class AgentConnectivityTemplateArgs {
  /// The path of the access.
  /// The path is immutable once set. Exactly one path can be set.
  /// Possible values are: `CLIENT_TO_AGENT`, `AGENT_TO_ANYWHERE`.
  final pulumi.Input<String> accessPath;
  /// The types of network access provided to the gateway.
  /// Both PUBLIC and PRIVATE can be configured.
  /// Each value may be one of: `PUBLIC`, `PRIVATE`.
  final pulumi.Input<List<String>?>? accessTypes;
  /// Short name of the AgentConnectivityTemplate resource.
  final pulumi.Input<String> agentConnectivityTemplateId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// Configuration for egress network traffic.
  /// Structure is documented below.
  final pulumi.Input<AgentConnectivityTemplateEgressNetworkConfig?>? egressNetworkConfig;
  /// Set of label tags associated with the AgentConnectivityTemplate resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the AgentConnectivityTemplate.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AgentConnectivityTemplateArgs].
  /// [accessPath] The path of the access.
  /// [accessTypes] The types of network access provided to the gateway.
  /// [agentConnectivityTemplateId] Short name of the AgentConnectivityTemplate resource.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [egressNetworkConfig] Configuration for egress network traffic.
  /// [labels] Set of label tags associated with the AgentConnectivityTemplate resource.
  /// [location] The location of the AgentConnectivityTemplate.
  /// [project] The ID of the project in which the resource belongs.
  const AgentConnectivityTemplateArgs({
    required this.accessPath,
    this.accessTypes,
    required this.agentConnectivityTemplateId,
    this.deletionPolicy,
    this.description,
    this.egressNetworkConfig,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPath': accessPath,
      'accessTypes': ?accessTypes,
      'agentConnectivityTemplateId': agentConnectivityTemplateId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'egressNetworkConfig': ?pulumi.Input.mapOptionalInputValue<AgentConnectivityTemplateEgressNetworkConfig, Map<String, dynamic>>(egressNetworkConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory AgentConnectivityTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AgentConnectivityTemplateArgs(
      accessPath: pulumi.Input.fromValue(map['accessPath'] as String),
      accessTypes: (() { final guardedValue = map['accessTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      agentConnectivityTemplateId: pulumi.Input.fromValue(map['agentConnectivityTemplateId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressNetworkConfig: (() { final guardedValue = map['egressNetworkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentConnectivityTemplateEgressNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
