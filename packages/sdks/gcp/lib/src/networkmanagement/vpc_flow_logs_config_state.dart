// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcFlowLogsConfig resources.
class VpcFlowLogsConfigState {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values:  AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final pulumi.Input<String>? aggregationInterval;
  /// Output only. The time the config was created.
  final pulumi.Input<String>? createTime;
  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  final pulumi.Input<String>? filterExpr;
  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0.
  final pulumi.Input<double>? flowSampling;
  /// Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  final pulumi.Input<String>? interconnectAttachment;
  /// Optional. Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  final pulumi.Input<String>? location;
  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  final pulumi.Input<String>? metadata;
  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>>? metadataFields;
  /// Identifier. Unique name of the configuration using the form:     `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  final pulumi.Input<String>? name;
  /// Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
  final pulumi.Input<String>? state;
  /// Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  final pulumi.Input<String>? subnet;
  /// Describes the state of the configured target resource for diagnostic
  /// purposes.
  /// Possible values:
  /// TARGET_RESOURCE_STATE_UNSPECIFIED
  /// TARGET_RESOURCE_EXISTS
  /// TARGET_RESOURCE_DOES_NOT_EXIST
  final pulumi.Input<String>? targetResourceState;
  /// Output only. The time the config was updated.
  final pulumi.Input<String>? updateTime;
  /// Required. ID of the `VpcFlowLogsConfig`.
  final pulumi.Input<String>? vpcFlowLogsConfigId;
  /// Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  final pulumi.Input<String>? vpnTunnel;

  /// Creates a new [VpcFlowLogsConfigState].
  /// [aggregationInterval] Optional. The aggregation interval for the logs. Default value is
  /// [createTime] Output only. The time the config was created.
  /// [description] Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filterExpr] Optional. Export filter used to define which VPC Flow Logs should be logged.
  /// [flowSampling] Optional. The value of the field must be in (0, 1]. The sampling rate
  /// [interconnectAttachment] Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  /// [labels] Optional. Resource labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource
  /// [metadata] Optional. Configures whether all, none or a subset of metadata fields
  /// [metadataFields] Optional. Custom metadata fields to include in the reported VPC flow
  /// [name] Identifier. Unique name of the configuration using the form:     `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// [network] Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Optional. The state of the VPC Flow Log configuration. Default value
  /// [subnet] Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  /// [targetResourceState] Describes the state of the configured target resource for diagnostic
  /// [updateTime] Output only. The time the config was updated.
  /// [vpcFlowLogsConfigId] Required. ID of the `VpcFlowLogsConfig`.
  /// [vpnTunnel] Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  VpcFlowLogsConfigState({
    this.aggregationInterval,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.filterExpr,
    this.flowSampling,
    this.interconnectAttachment,
    this.labels,
    this.location,
    this.metadata,
    this.metadataFields,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.state,
    this.subnet,
    this.targetResourceState,
    this.updateTime,
    this.vpcFlowLogsConfigId,
    this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'interconnectAttachment': ?interconnectAttachment,
      'labels': ?labels,
      'location': ?location,
      'metadata': ?metadata,
      'metadataFields': ?metadataFields,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'subnet': ?subnet,
      'targetResourceState': ?targetResourceState,
      'updateTime': ?updateTime,
      'vpcFlowLogsConfigId': ?vpcFlowLogsConfigId,
      'vpnTunnel': ?vpnTunnel,
    };
  }

  factory VpcFlowLogsConfigState.fromMap(Map<String, dynamic> map) {
    return VpcFlowLogsConfigState(
      aggregationInterval: map['aggregationInterval'] == null ? null : (map['aggregationInterval']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      filterExpr: map['filterExpr'] == null ? null : (map['filterExpr']! as String).input(),
      flowSampling: map['flowSampling'] == null ? null : (map['flowSampling']! as double).input(),
      interconnectAttachment: map['interconnectAttachment'] == null ? null : (map['interconnectAttachment']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']! as String).input(),
      metadataFields: map['metadataFields'] == null ? null : ((map['metadataFields']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as String).input(),
      targetResourceState: map['targetResourceState'] == null ? null : (map['targetResourceState']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      vpcFlowLogsConfigId: map['vpcFlowLogsConfigId'] == null ? null : (map['vpcFlowLogsConfigId']! as String).input(),
      vpnTunnel: map['vpnTunnel'] == null ? null : (map['vpnTunnel']! as String).input(),
    );
  }
}

