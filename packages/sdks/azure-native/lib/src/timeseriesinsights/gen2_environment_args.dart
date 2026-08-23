// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gen2_storage_configuration_input.dart';
import 'sku.dart';
import 'time_series_id_property.dart';
import 'warm_store_configuration_properties.dart';

/// {@template pulumi_timeseriesinsights_gen2_environment_args_doc}
/// The set of arguments for Gen2Environment.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_gen2_environment_args_doc}
class Gen2EnvironmentArgs {
  /// Name of the environment
  final pulumi.Input<String>? environmentName;
  /// The kind of the environment.
  /// Expected value is 'Gen2'.
  final pulumi.Input<String> kind;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  final pulumi.Input<Sku> sku;
  /// The storage configuration provides the connection details that allows the Time Series Insights service to connect to the customer storage account that is used to store the environment's data.
  final pulumi.Input<Gen2StorageConfigurationInput> storageConfiguration;
  /// Key-value pairs of additional properties for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The list of event properties which will be used to define the environment's time series id.
  final pulumi.Input<List<TimeSeriesIdProperty>> timeSeriesIdProperties;
  /// The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
  final pulumi.Input<WarmStoreConfigurationProperties>? warmStoreConfiguration;

  /// Creates a new [Gen2EnvironmentArgs].
  /// [environmentName] Name of the environment
  /// [kind] The kind of the environment.
  /// [location] The location of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [sku] The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  /// [storageConfiguration] The storage configuration provides the connection details that allows the Time Series Insights service to connect to the customer storage account that is used to store the environment's data.
  /// [tags] Key-value pairs of additional properties for the resource.
  /// [timeSeriesIdProperties] The list of event properties which will be used to define the environment's time series id.
  /// [warmStoreConfiguration] The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
  const Gen2EnvironmentArgs({
    this.environmentName,
    required this.kind,
    this.location,
    required this.resourceGroupName,
    required this.sku,
    required this.storageConfiguration,
    this.tags,
    required this.timeSeriesIdProperties,
    this.warmStoreConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': ?environmentName,
      'kind': kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageConfiguration': pulumi.Input.mapInputValue<Gen2StorageConfigurationInput, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'timeSeriesIdProperties': pulumi.Input.mapInputValue<List<TimeSeriesIdProperty>, List<Map<String, dynamic>>>(timeSeriesIdProperties, (value) => pulumi.Input.encodeList<TimeSeriesIdProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warmStoreConfiguration': ?pulumi.Input.mapOptionalInputValue<WarmStoreConfigurationProperties, Map<String, dynamic>>(warmStoreConfiguration, (value) => value.toMap()),
    };
  }

  factory Gen2EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return Gen2EnvironmentArgs(
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      storageConfiguration: pulumi.Input.fromValue(Gen2StorageConfigurationInput.fromMap((map['storageConfiguration']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeSeriesIdProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<TimeSeriesIdProperty>(map['timeSeriesIdProperties']!, (value) => TimeSeriesIdProperty.fromMap((value as Map).cast<String, dynamic>()))),
      warmStoreConfiguration: (() { final guardedValue = map['warmStoreConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WarmStoreConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
