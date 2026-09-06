// ignore_for_file: unused_element, unnecessary_cast

import 'flow_log_format_parameters_response.dart';
import 'managed_service_identity_response.dart';
import 'retention_policy_parameters_response.dart';
import 'traffic_analytics_properties_response.dart';

/// Result data returned by getFlowLog.
class GetFlowLogResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Flag to enable/disable flow logging.
  final bool? enabled;
  /// Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  final String? enabledFilteringCriteria;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Parameters that define the configuration of traffic analytics.
  final TrafficAnalyticsPropertiesResponse? flowAnalyticsConfiguration;
  /// Parameters that define the flow log format.
  final FlowLogFormatParametersResponse? format;
  /// Resource ID.
  final String? id;
  /// FlowLog resource Managed Identity
  final ManagedServiceIdentityResponse? identity;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the flow log.
  final String? provisioningState;
  /// Parameters that define the retention policy for flow log.
  final RetentionPolicyParametersResponse? retentionPolicy;
  /// ID of the storage account which is used to store the flow log.
  final String? storageId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Guid of network security group to which flow log will be applied.
  final String? targetResourceGuid;
  /// ID of network security group to which flow log will be applied.
  final String? targetResourceId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetFlowLogResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enabled] Flag to enable/disable flow logging.
  /// [enabledFilteringCriteria] Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [flowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  /// [format] Parameters that define the flow log format.
  /// [id] Resource ID.
  /// [identity] FlowLog resource Managed Identity
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the flow log.
  /// [retentionPolicy] Parameters that define the retention policy for flow log.
  /// [storageId] ID of the storage account which is used to store the flow log.
  /// [tags] Resource tags.
  /// [targetResourceGuid] Guid of network security group to which flow log will be applied.
  /// [targetResourceId] ID of network security group to which flow log will be applied.
  /// [type] Resource type.
  const GetFlowLogResult({
    this.azureApiVersion,
    this.enabled,
    this.enabledFilteringCriteria,
    this.etag,
    this.flowAnalyticsConfiguration,
    this.format,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.retentionPolicy,
    this.storageId,
    this.tags,
    this.targetResourceGuid,
    this.targetResourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'enabled': ?enabled,
      'enabledFilteringCriteria': ?enabledFilteringCriteria,
      'etag': ?etag,
      'flowAnalyticsConfiguration': ?flowAnalyticsConfiguration?.toMap(),
      'format': ?format?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'retentionPolicy': ?retentionPolicy?.toMap(),
      'storageId': ?storageId,
      'tags': ?tags,
      'targetResourceGuid': ?targetResourceGuid,
      'targetResourceId': ?targetResourceId,
      'type': ?type,
    };
  }

  factory GetFlowLogResult.fromMap(Map<String, dynamic> map) {
    return GetFlowLogResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledFilteringCriteria: (() { final guardedValue = map['enabledFilteringCriteria']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowAnalyticsConfiguration: (() { final guardedValue = map['flowAnalyticsConfiguration']; if (guardedValue == null) return null; return TrafficAnalyticsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return FlowLogFormatParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return RetentionPolicyParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageId: (() { final guardedValue = map['storageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetResourceGuid: (() { final guardedValue = map['targetResourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
