// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The available logging options for this subnetwork.
class SubnetworkLogConfigResponseComputeBeta {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  final pulumi.Input<String> aggregationInterval;
  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. Flow logging isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final pulumi.Input<bool> enable;
  /// Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  final pulumi.Input<String> filterExpr;
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  final pulumi.Input<double> flowSampling;
  /// Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  final pulumi.Input<String> metadata;
  /// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>> metadataFields;

  /// Creates a new [SubnetworkLogConfigResponseComputeBeta].
  /// [aggregationInterval] Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  /// [enable] Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. Flow logging isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [filterExpr] Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  /// [flowSampling] Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  /// [metadata] Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  /// [metadataFields] Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  SubnetworkLogConfigResponseComputeBeta({
    required this.aggregationInterval,
    required this.enable,
    required this.filterExpr,
    required this.flowSampling,
    required this.metadata,
    required this.metadataFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': aggregationInterval,
      'enable': enable,
      'filterExpr': filterExpr,
      'flowSampling': flowSampling,
      'metadata': metadata,
      'metadataFields': metadataFields,
    };
  }

  factory SubnetworkLogConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SubnetworkLogConfigResponseComputeBeta(
      aggregationInterval: pulumi.Input.fromValue(map['aggregationInterval'] as String),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      filterExpr: pulumi.Input.fromValue(map['filterExpr'] as String),
      flowSampling: pulumi.Input.fromValue(map['flowSampling'] as double),
      metadata: pulumi.Input.fromValue(map['metadata'] as String),
      metadataFields: pulumi.Input.fromValue((map['metadataFields'] as List).cast<String>()),
    );
  }
}

