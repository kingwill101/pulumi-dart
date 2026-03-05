// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_organization_vpc_flow_logs_config_organization_vpc_flow_logs_config_args_doc}
/// The set of arguments for OrganizationVpcFlowLogsConfig.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_organization_vpc_flow_logs_config_organization_vpc_flow_logs_config_args_doc}
class OrganizationVpcFlowLogsConfigArgs {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values: INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final pulumi.Input<String>? aggregationInterval;
  /// Determines whether to include cross project annotations in the logs.
  /// This field is available only for organization configurations. If not
  /// specified in org configs will be set to CROSS_PROJECT_METADATA_ENABLED.
  /// Possible values:
  /// CROSS_PROJECT_METADATA_ENABLED
  /// CROSS_PROJECT_METADATA_DISABLED
  /// Possible values are: `CROSS_PROJECT_METADATA_ENABLED`, `CROSS_PROJECT_METADATA_DISABLED`.
  final pulumi.Input<String>? crossProjectMetadata;
  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  final pulumi.Input<String>? description;
  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  final pulumi.Input<String>? filterExpr;
  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0
  final pulumi.Input<double>? flowSampling;
  /// Optional. Resource labels to represent the user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  final pulumi.Input<String> location;
  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  final pulumi.Input<String>? metadata;
  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>>? metadataFields;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> organization;
  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: ENABLED DISABLED
  final pulumi.Input<String>? state;
  /// Required. ID of the `VpcFlowLogsConfig`.
  final pulumi.Input<String> vpcFlowLogsConfigId;

  /// Creates a new [OrganizationVpcFlowLogsConfigArgs].
  /// [aggregationInterval] Optional. The aggregation interval for the logs. Default value is
  /// [crossProjectMetadata] Determines whether to include cross project annotations in the logs.
  /// [description] Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// [filterExpr] Optional. Export filter used to define which VPC Flow Logs should be logged.
  /// [flowSampling] Optional. The value of the field must be in (0, 1]. The sampling rate
  /// [labels] Optional. Resource labels to represent the user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource
  /// [metadata] Optional. Configures whether all, none or a subset of metadata fields
  /// [metadataFields] Optional. Custom metadata fields to include in the reported VPC flow
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [state] Optional. The state of the VPC Flow Log configuration. Default value
  /// [vpcFlowLogsConfigId] Required. ID of the `VpcFlowLogsConfig`.
  OrganizationVpcFlowLogsConfigArgs({
    this.aggregationInterval,
    this.crossProjectMetadata,
    this.description,
    this.filterExpr,
    this.flowSampling,
    this.labels,
    required this.location,
    this.metadata,
    this.metadataFields,
    required this.organization,
    this.state,
    required this.vpcFlowLogsConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'crossProjectMetadata': ?crossProjectMetadata,
      'description': ?description,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'labels': ?labels,
      'location': location,
      'metadata': ?metadata,
      'metadataFields': ?metadataFields,
      'organization': organization,
      'state': ?state,
      'vpcFlowLogsConfigId': vpcFlowLogsConfigId,
    };
  }

  factory OrganizationVpcFlowLogsConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationVpcFlowLogsConfigArgs(
      aggregationInterval: (() { final guardedValue = map['aggregationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossProjectMetadata: (() { final guardedValue = map['crossProjectMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterExpr: (() { final guardedValue = map['filterExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowSampling: (() { final guardedValue = map['flowSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataFields: (() { final guardedValue = map['metadataFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcFlowLogsConfigId: pulumi.Input.fromValue(map['vpcFlowLogsConfigId'] as String),
    );
  }
}

