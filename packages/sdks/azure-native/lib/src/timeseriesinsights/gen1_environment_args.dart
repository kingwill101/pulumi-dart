// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';
import 'time_series_id_property.dart';

/// {@template pulumi_timeseriesinsights_gen1_environment_args_doc}
/// The set of arguments for Gen1Environment.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_gen1_environment_args_doc}
class Gen1EnvironmentArgs {
  /// ISO8601 timespan specifying the minimum number of days the environment's events will be available for query.
  final pulumi.Input<String> dataRetentionTime;
  /// Name of the environment
  final pulumi.Input<String>? environmentName;
  /// The kind of the environment.
  /// Expected value is 'Gen1'.
  final pulumi.Input<String> kind;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The list of event properties which will be used to partition data in the environment. Currently, only a single partition key property is supported.
  final pulumi.Input<List<TimeSeriesIdProperty>>? partitionKeyProperties;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  final pulumi.Input<Sku> sku;
  /// The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If "PauseIngress" is specified, new events will not be read from the event source. If "PurgeOldData" is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData.
  final pulumi.Input<String>? storageLimitExceededBehavior;
  /// Key-value pairs of additional properties for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Gen1EnvironmentArgs].
  /// [dataRetentionTime] ISO8601 timespan specifying the minimum number of days the environment's events will be available for query.
  /// [environmentName] Name of the environment
  /// [kind] The kind of the environment.
  /// [location] The location of the resource.
  /// [partitionKeyProperties] The list of event properties which will be used to partition data in the environment. Currently, only a single partition key property is supported.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [sku] The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  /// [storageLimitExceededBehavior] The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If "PauseIngress" is specified, new events will not be read from the event source. If "PurgeOldData" is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData.
  /// [tags] Key-value pairs of additional properties for the resource.
  const Gen1EnvironmentArgs({
    required this.dataRetentionTime,
    this.environmentName,
    required this.kind,
    this.location,
    this.partitionKeyProperties,
    required this.resourceGroupName,
    required this.sku,
    this.storageLimitExceededBehavior,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRetentionTime': dataRetentionTime,
      'environmentName': ?environmentName,
      'kind': kind,
      'location': ?location,
      'partitionKeyProperties': ?pulumi.Input.mapOptionalInputValue<List<TimeSeriesIdProperty>, List<Map<String, dynamic>>>(partitionKeyProperties, (value) => pulumi.Input.encodeList<TimeSeriesIdProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageLimitExceededBehavior': ?storageLimitExceededBehavior,
      'tags': ?tags,
    };
  }

  factory Gen1EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return Gen1EnvironmentArgs(
      dataRetentionTime: pulumi.Input.fromValue(map['dataRetentionTime'] as String),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyProperties: (() { final guardedValue = map['partitionKeyProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TimeSeriesIdProperty>(guardedValue, (value) => TimeSeriesIdProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      storageLimitExceededBehavior: (() { final guardedValue = map['storageLimitExceededBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

