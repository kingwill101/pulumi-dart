// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_vpc_flow_logs_config_vpc_flow_logs_config_args_doc}
/// The set of arguments for VpcFlowLogsConfig.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_vpc_flow_logs_config_vpc_flow_logs_config_args_doc}
class VpcFlowLogsConfigArgs {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values:  AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final pulumi.Input<String?>? aggregationInterval;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  final pulumi.Input<String?>? description;
  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  final pulumi.Input<String?>? filterExpr;
  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0.
  final pulumi.Input<double?>? flowSampling;
  /// Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  final pulumi.Input<String?>? interconnectAttachment;
  /// Optional. Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  final pulumi.Input<String> location;
  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  final pulumi.Input<String?>? metadata;
  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>?>? metadataFields;
  /// Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  final pulumi.Input<String?>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
  final pulumi.Input<String?>? state;
  /// Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  final pulumi.Input<String?>? subnet;
  /// Required. ID of the `VpcFlowLogsConfig`.
  final pulumi.Input<String> vpcFlowLogsConfigId;
  /// Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  final pulumi.Input<String?>? vpnTunnel;

  /// Creates a new [VpcFlowLogsConfigArgs].
  /// [aggregationInterval] Optional. The aggregation interval for the logs. Default value is
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// [filterExpr] Optional. Export filter used to define which VPC Flow Logs should be logged.
  /// [flowSampling] Optional. The value of the field must be in (0, 1]. The sampling rate
  /// [interconnectAttachment] Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  /// [labels] Optional. Resource labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource
  /// [metadata] Optional. Configures whether all, none or a subset of metadata fields
  /// [metadataFields] Optional. Custom metadata fields to include in the reported VPC flow
  /// [network] Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Optional. The state of the VPC Flow Log configuration. Default value
  /// [subnet] Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  /// [vpcFlowLogsConfigId] Required. ID of the `VpcFlowLogsConfig`.
  /// [vpnTunnel] Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  const VpcFlowLogsConfigArgs({
    this.aggregationInterval,
    this.deletionPolicy,
    this.description,
    this.filterExpr,
    this.flowSampling,
    this.interconnectAttachment,
    this.labels,
    required this.location,
    this.metadata,
    this.metadataFields,
    this.network,
    this.project,
    this.state,
    this.subnet,
    required this.vpcFlowLogsConfigId,
    this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'interconnectAttachment': ?interconnectAttachment,
      'labels': ?labels,
      'location': location,
      'metadata': ?metadata,
      'metadataFields': ?metadataFields,
      'network': ?network,
      'project': ?project,
      'state': ?state,
      'subnet': ?subnet,
      'vpcFlowLogsConfigId': vpcFlowLogsConfigId,
      'vpnTunnel': ?vpnTunnel,
    };
  }

  factory VpcFlowLogsConfigArgs.fromMap(Map<String, dynamic> map) {
    return VpcFlowLogsConfigArgs(
      aggregationInterval: (() { final guardedValue = map['aggregationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterExpr: (() { final guardedValue = map['filterExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowSampling: (() { final guardedValue = map['flowSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      interconnectAttachment: (() { final guardedValue = map['interconnectAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataFields: (() { final guardedValue = map['metadataFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcFlowLogsConfigId: pulumi.Input.fromValue(map['vpcFlowLogsConfigId'] as String),
      vpnTunnel: (() { final guardedValue = map['vpnTunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
