// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_log_config_aggregation_interval.dart';
import 'subnetwork_log_config_metadata.dart';

/// The available logging options for this subnetwork.
class SubnetworkLogConfig {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  final pulumi.Input<SubnetworkLogConfigAggregationInterval>?
  aggregationInterval;

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
      'aggregationInterval':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetworkLogConfigAggregationInterval,
            String
          >(aggregationInterval, (value) => value.wireValue),
      'enable': ?enable,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetworkLogConfigMetadata,
            String
          >(metadata, (value) => value.wireValue),
      'metadataFields': ?metadataFields,
    };
  }

  factory SubnetworkLogConfig.fromMap(Map<String, dynamic> map) {
    return SubnetworkLogConfig(
      aggregationInterval: (() {
        final guardedValue = map['aggregationInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubnetworkLogConfigAggregationInterval.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filterExpr: (() {
        final guardedValue = map['filterExpr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      flowSampling: (() {
        final guardedValue = map['flowSampling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubnetworkLogConfigMetadata.fromValue(guardedValue as String),
        );
      })(),
      metadataFields: (() {
        final guardedValue = map['metadataFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
