// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationVpcFlowLogsConfig resources.
class OrganizationVpcFlowLogsConfigState {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values: INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final pulumi.Input<String>? aggregationInterval;
  /// Output only. The time the config was created.
  final pulumi.Input<String>? createTime;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? location;
  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  final pulumi.Input<String>? metadata;
  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>>? metadataFields;
  /// Identifier. Unique name of the configuration using the form:     `organizations/{org_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  final pulumi.Input<String>? name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? organization;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: ENABLED DISABLED
  final pulumi.Input<String>? state;
  /// Output only. The time the config was updated.
  final pulumi.Input<String>? updateTime;
  /// Required. ID of the `VpcFlowLogsConfig`.
  final pulumi.Input<String>? vpcFlowLogsConfigId;

  /// Creates a new [OrganizationVpcFlowLogsConfigState].
  /// [aggregationInterval] Optional. The aggregation interval for the logs. Default value is
  /// [createTime] Output only. The time the config was created.
  /// [crossProjectMetadata] Determines whether to include cross project annotations in the logs.
  /// [description] Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filterExpr] Optional. Export filter used to define which VPC Flow Logs should be logged.
  /// [flowSampling] Optional. The value of the field must be in (0, 1]. The sampling rate
  /// [labels] Optional. Resource labels to represent the user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource
  /// [metadata] Optional. Configures whether all, none or a subset of metadata fields
  /// [metadataFields] Optional. Custom metadata fields to include in the reported VPC flow
  /// [name] Identifier. Unique name of the configuration using the form:     `organizations/{org_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Optional. The state of the VPC Flow Log configuration. Default value
  /// [updateTime] Output only. The time the config was updated.
  /// [vpcFlowLogsConfigId] Required. ID of the `VpcFlowLogsConfig`.
  const OrganizationVpcFlowLogsConfigState({
    this.aggregationInterval,
    this.createTime,
    this.crossProjectMetadata,
    this.description,
    this.effectiveLabels,
    this.filterExpr,
    this.flowSampling,
    this.labels,
    this.location,
    this.metadata,
    this.metadataFields,
    this.name,
    this.organization,
    this.pulumiLabels,
    this.state,
    this.updateTime,
    this.vpcFlowLogsConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'createTime': ?createTime,
      'crossProjectMetadata': ?crossProjectMetadata,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'labels': ?labels,
      'location': ?location,
      'metadata': ?metadata,
      'metadataFields': ?metadataFields,
      'name': ?name,
      'organization': ?organization,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
      'vpcFlowLogsConfigId': ?vpcFlowLogsConfigId,
    };
  }

  factory OrganizationVpcFlowLogsConfigState.fromMap(Map<String, dynamic> map) {
    return OrganizationVpcFlowLogsConfigState(
      aggregationInterval: (() { final guardedValue = map['aggregationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossProjectMetadata: (() { final guardedValue = map['crossProjectMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      filterExpr: (() { final guardedValue = map['filterExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowSampling: (() { final guardedValue = map['flowSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataFields: (() { final guardedValue = map['metadataFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcFlowLogsConfigId: (() { final guardedValue = map['vpcFlowLogsConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

