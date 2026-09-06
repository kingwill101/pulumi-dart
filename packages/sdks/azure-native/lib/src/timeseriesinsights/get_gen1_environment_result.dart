// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_status_response.dart';
import 'sku_response.dart';
import 'time_series_id_property_response.dart';

/// Result data returned by getGen1Environment.
class GetGen1EnvironmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the resource was created.
  final String? creationTime;
  /// The fully qualified domain name used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  final String? dataAccessFqdn;
  /// An id used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  final String? dataAccessId;
  /// ISO8601 timespan specifying the minimum number of days the environment's events will be available for query.
  final String? dataRetentionTime;
  /// Resource Id
  final String? id;
  /// The kind of the environment.
  /// Expected value is 'Gen1'.
  final String? kind;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// The list of event properties which will be used to partition data in the environment. Currently, only a single partition key property is supported.
  final List<TimeSeriesIdPropertyResponse>? partitionKeyProperties;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  final SkuResponse? sku;
  /// An object that represents the status of the environment, and its internal state in the Time Series Insights service.
  final EnvironmentStatusResponse? status;
  /// The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If "PauseIngress" is specified, new events will not be read from the event source. If "PurgeOldData" is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData.
  final String? storageLimitExceededBehavior;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String? type;

  /// Creates a new [GetGen1EnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The time the resource was created.
  /// [dataAccessFqdn] The fully qualified domain name used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  /// [dataAccessId] An id used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  /// [dataRetentionTime] ISO8601 timespan specifying the minimum number of days the environment's events will be available for query.
  /// [id] Resource Id
  /// [kind] The kind of the environment.
  /// [location] Resource location
  /// [name] Resource name
  /// [partitionKeyProperties] The list of event properties which will be used to partition data in the environment. Currently, only a single partition key property is supported.
  /// [provisioningState] Provisioning state of the resource.
  /// [sku] The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  /// [status] An object that represents the status of the environment, and its internal state in the Time Series Insights service.
  /// [storageLimitExceededBehavior] The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If "PauseIngress" is specified, new events will not be read from the event source. If "PurgeOldData" is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData.
  /// [tags] Resource tags
  /// [type] Resource type
  const GetGen1EnvironmentResult({
    this.azureApiVersion,
    this.creationTime,
    this.dataAccessFqdn,
    this.dataAccessId,
    this.dataRetentionTime,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.partitionKeyProperties,
    this.provisioningState,
    this.sku,
    this.status,
    this.storageLimitExceededBehavior,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'dataAccessFqdn': ?dataAccessFqdn,
      'dataAccessId': ?dataAccessId,
      'dataRetentionTime': ?dataRetentionTime,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'partitionKeyProperties': ?(() { final guardedValue = partitionKeyProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<TimeSeriesIdPropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'status': ?status?.toMap(),
      'storageLimitExceededBehavior': ?storageLimitExceededBehavior,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetGen1EnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetGen1EnvironmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataAccessFqdn: (() { final guardedValue = map['dataAccessFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataAccessId: (() { final guardedValue = map['dataAccessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataRetentionTime: (() { final guardedValue = map['dataRetentionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionKeyProperties: (() { final guardedValue = map['partitionKeyProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeSeriesIdPropertyResponse>(guardedValue, (value) => TimeSeriesIdPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return EnvironmentStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageLimitExceededBehavior: (() { final guardedValue = map['storageLimitExceededBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
