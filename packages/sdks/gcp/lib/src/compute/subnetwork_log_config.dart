// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetworkLogConfig {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled.
  /// Toggles the aggregation interval for collecting flow logs. Increasing the
  /// interval time will reduce the amount of generated flow logs for long
  /// lasting connections. Default is an interval of 5 seconds per connection.
  /// Default value is `INTERVAL_5_SEC`.
  /// Possible values are: `INTERVAL_5_SEC`, `INTERVAL_30_SEC`, `INTERVAL_1_MIN`, `INTERVAL_5_MIN`, `INTERVAL_10_MIN`, `INTERVAL_15_MIN`.
  final pulumi.Input<String?>? aggregationInterval;
  /// Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
  /// https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
  /// The default value is 'true', which evaluates to include everything.
  final pulumi.Input<String?>? filterExpr;
  /// Can only be specified if VPC flow logging for this subnetwork is enabled.
  /// The value of the field must be in [0, 1]. Set the sampling rate of VPC
  /// flow logs within the subnetwork where 1.0 means all collected logs are
  /// reported and 0.0 means no logs are reported. Default is 0.5 which means
  /// half of all collected logs are reported.
  final pulumi.Input<double?>? flowSampling;
  /// Can only be specified if VPC flow logging for this subnetwork is enabled.
  /// Configures whether metadata fields should be added to the reported VPC
  /// flow logs.
  /// Default value is `INCLUDE_ALL_METADATA`.
  /// Possible values are: `EXCLUDE_ALL_METADATA`, `INCLUDE_ALL_METADATA`, `CUSTOM_METADATA`.
  final pulumi.Input<String?>? metadata;
  /// List of metadata fields that should be added to reported logs.
  /// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" is set to CUSTOM_METADATA.
  final pulumi.Input<List<String>?>? metadataFields;

  /// Creates a new [SubnetworkLogConfig].
  /// [aggregationInterval] Can only be specified if VPC flow logging for this subnetwork is enabled.
  /// [filterExpr] Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
  /// [flowSampling] Can only be specified if VPC flow logging for this subnetwork is enabled.
  /// [metadata] Can only be specified if VPC flow logging for this subnetwork is enabled.
  /// [metadataFields] List of metadata fields that should be added to reported logs.
  const SubnetworkLogConfig({
    this.aggregationInterval,
    this.filterExpr,
    this.flowSampling,
    this.metadata,
    this.metadataFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationInterval': ?aggregationInterval,
      'filterExpr': ?filterExpr,
      'flowSampling': ?flowSampling,
      'metadata': ?metadata,
      'metadataFields': ?metadataFields,
    };
  }

  factory SubnetworkLogConfig.fromMap(Map<String, dynamic> map) {
    return SubnetworkLogConfig(
      aggregationInterval: (() { final guardedValue = map['aggregationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterExpr: (() { final guardedValue = map['filterExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowSampling: (() { final guardedValue = map['flowSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataFields: (() { final guardedValue = map['metadataFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
