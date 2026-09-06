// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_status_response.dart';
import 'gen2_storage_configuration_output_response.dart';
import 'sku_response.dart';
import 'time_series_id_property_response.dart';
import 'warm_store_configuration_properties_response.dart';

/// Result data returned by getGen2Environment.
class GetGen2EnvironmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the resource was created.
  final String? creationTime;
  /// The fully qualified domain name used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  final String? dataAccessFqdn;
  /// An id used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  final String? dataAccessId;
  /// Resource Id
  final String? id;
  /// The kind of the environment.
  /// Expected value is 'Gen2'.
  final String? kind;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  final SkuResponse? sku;
  /// An object that represents the status of the environment, and its internal state in the Time Series Insights service.
  final EnvironmentStatusResponse? status;
  /// The storage configuration provides the connection details that allows the Time Series Insights service to connect to the customer storage account that is used to store the environment's data.
  final Gen2StorageConfigurationOutputResponse? storageConfiguration;
  /// Resource tags
  final Map<String, String>? tags;
  /// The list of event properties which will be used to define the environment's time series id.
  final List<TimeSeriesIdPropertyResponse>? timeSeriesIdProperties;
  /// Resource type
  final String? type;
  /// The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
  final WarmStoreConfigurationPropertiesResponse? warmStoreConfiguration;

  /// Creates a new [GetGen2EnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The time the resource was created.
  /// [dataAccessFqdn] The fully qualified domain name used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  /// [dataAccessId] An id used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  /// [id] Resource Id
  /// [kind] The kind of the environment.
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] Provisioning state of the resource.
  /// [sku] The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  /// [status] An object that represents the status of the environment, and its internal state in the Time Series Insights service.
  /// [storageConfiguration] The storage configuration provides the connection details that allows the Time Series Insights service to connect to the customer storage account that is used to store the environment's data.
  /// [tags] Resource tags
  /// [timeSeriesIdProperties] The list of event properties which will be used to define the environment's time series id.
  /// [type] Resource type
  /// [warmStoreConfiguration] The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
  const GetGen2EnvironmentResult({
    this.azureApiVersion,
    this.creationTime,
    this.dataAccessFqdn,
    this.dataAccessId,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.provisioningState,
    this.sku,
    this.status,
    this.storageConfiguration,
    this.tags,
    this.timeSeriesIdProperties,
    this.type,
    this.warmStoreConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'dataAccessFqdn': ?dataAccessFqdn,
      'dataAccessId': ?dataAccessId,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'status': ?status?.toMap(),
      'storageConfiguration': ?storageConfiguration?.toMap(),
      'tags': ?tags,
      'timeSeriesIdProperties': ?(() { final guardedValue = timeSeriesIdProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<TimeSeriesIdPropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'warmStoreConfiguration': ?warmStoreConfiguration?.toMap(),
    };
  }

  factory GetGen2EnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetGen2EnvironmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataAccessFqdn: (() { final guardedValue = map['dataAccessFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataAccessId: (() { final guardedValue = map['dataAccessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return EnvironmentStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageConfiguration: (() { final guardedValue = map['storageConfiguration']; if (guardedValue == null) return null; return Gen2StorageConfigurationOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeSeriesIdProperties: (() { final guardedValue = map['timeSeriesIdProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeSeriesIdPropertyResponse>(guardedValue, (value) => TimeSeriesIdPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      warmStoreConfiguration: (() { final guardedValue = map['warmStoreConfiguration']; if (guardedValue == null) return null; return WarmStoreConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
