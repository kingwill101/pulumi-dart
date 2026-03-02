// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_log_config_aggregation_interval.dart';
import 'subnetwork_log_config_metadata.dart';

/// The available logging options for this subnetwork.
class SubnetworkLogConfig {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  final pulumi.Input<SubnetworkLogConfigAggregationInterval>? aggregationInterval;
  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. Flow logging isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final pulumi.Input<bool>? enable;
  /// Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  final pulumi.Input<String>? filterExpr;
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  final pulumi.Input<double>? flowSampling;
  /// Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  final pulumi.Input<SubnetworkLogConfigMetadata>? metadata;
  /// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>>? metadataFields;

  /// Creates a new [SubnetworkLogConfig].
  /// [aggregationInterval] Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  /// [enable] Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. Flow logging isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [filterExpr] Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  /// [flowSampling] Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  /// [metadata] Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  /// [metadataFields] Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  SubnetworkLogConfig({
    this.aggregationInterval,
    this.enable,
    this.filterExpr,
    this.flowSampling,
    this.metadata,
    this.metadataFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?pulumi.Input.mapOptionalInputValue<SubnetworkLogConfigAggregationInterval, String>(aggregationInterval, (value) => value.value),
      'enable': ?enable,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'metadata': ?pulumi.Input.mapOptionalInputValue<SubnetworkLogConfigMetadata, String>(metadata, (value) => value.value),
      'metadataFields': ?metadataFields,
    };
  }

  factory SubnetworkLogConfig.fromMap(Map<String, dynamic> map) {
    return SubnetworkLogConfig(
      aggregationInterval: map['aggregationInterval'] == null ? null : (SubnetworkLogConfigAggregationInterval.fromValue(map['aggregationInterval']! as String)).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      filterExpr: map['filterExpr'] == null ? null : (map['filterExpr']! as String).input(),
      flowSampling: map['flowSampling'] == null ? null : (map['flowSampling']! as double).input(),
      metadata: map['metadata'] == null ? null : (SubnetworkLogConfigMetadata.fromValue(map['metadata']! as String)).input(),
      metadataFields: map['metadataFields'] == null ? null : ((map['metadataFields']! as List).cast<String>()).input(),
    );
  }
}

