// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connectivity_template_egress_network_config.dart';

/// Input properties used for looking up and filtering AgentConnectivityTemplate resources.
class AgentConnectivityTemplateState {
  /// The path of the access.
  /// The path is immutable once set. Exactly one path can be set.
  /// Possible values are: `CLIENT_TO_AGENT`, `AGENT_TO_ANYWHERE`.
  final pulumi.Input<String?>? accessPath;
  /// The types of network access provided to the gateway.
  /// Both PUBLIC and PRIVATE can be configured.
  /// Each value may be one of: `PUBLIC`, `PRIVATE`.
  final pulumi.Input<List<String>?>? accessTypes;
  /// Short name of the AgentConnectivityTemplate resource.
  final pulumi.Input<String?>? agentConnectivityTemplateId;
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
  /// Configuration for egress network traffic.
  /// Structure is documented below.
  final pulumi.Input<AgentConnectivityTemplateEgressNetworkConfig?>? egressNetworkConfig;
  /// Etag of the resource.
  /// If this is provided, it must match the server's etag. If the provided etag
  /// does not match the server's etag, the request will fail with a 409 ABORTED
  /// error.
  final pulumi.Input<String?>? etag;
  /// Set of label tags associated with the AgentConnectivityTemplate resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the AgentConnectivityTemplate.
  final pulumi.Input<String?>? location;
  /// Identifier. Name of the resource.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AgentConnectivityTemplateState].
  /// [accessPath] The path of the access.
  /// [accessTypes] The types of network access provided to the gateway.
  /// [agentConnectivityTemplateId] Short name of the AgentConnectivityTemplate resource.
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [egressNetworkConfig] Configuration for egress network traffic.
  /// [etag] Etag of the resource.
  /// [labels] Set of label tags associated with the AgentConnectivityTemplate resource.
  /// [location] The location of the AgentConnectivityTemplate.
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The timestamp when the resource was updated.
  const AgentConnectivityTemplateState({
    this.accessPath,
    this.accessTypes,
    this.agentConnectivityTemplateId,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.egressNetworkConfig,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPath': ?accessPath,
      'accessTypes': ?accessTypes,
      'agentConnectivityTemplateId': ?agentConnectivityTemplateId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'egressNetworkConfig': ?pulumi.Input.mapOptionalInputValue<AgentConnectivityTemplateEgressNetworkConfig, Map<String, dynamic>>(egressNetworkConfig, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory AgentConnectivityTemplateState.fromMap(Map<String, dynamic> map) {
    return AgentConnectivityTemplateState(
      accessPath: (() { final guardedValue = map['accessPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessTypes: (() { final guardedValue = map['accessTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      agentConnectivityTemplateId: (() { final guardedValue = map['agentConnectivityTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      egressNetworkConfig: (() { final guardedValue = map['egressNetworkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentConnectivityTemplateEgressNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
