// ignore_for_file: unused_element, unnecessary_cast

import 'flow_log_format_parameters_response.dart';
import 'managed_service_identity_response.dart';
import 'retention_policy_parameters_response.dart';
import 'traffic_analytics_properties_response.dart';

/// A flow log resource.
class FlowLogResponse {
  /// Flag to enable/disable flow logging.
  final bool? enabled;
  /// Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  final String? enabledFilteringCriteria;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
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
  final String name;
  /// The provisioning state of the flow log.
  final String provisioningState;
  /// Optional field to filter network traffic logs based on flow states. Value of this field could be any comma separated combination string of letters B,C,E or D. B represents Begin, when a flow is created. C represents Continue for an ongoing flow generated at every five-minute interval. E represents End, when a flow is terminated. D represents Deny, when a flow is denied. If not specified, all network traffic will be logged.
  final String? recordTypes;
  /// Parameters that define the retention policy for flow log.
  final RetentionPolicyParametersResponse? retentionPolicy;
  /// ID of the storage account which is used to store the flow log.
  final String storageId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Guid of network security group to which flow log will be applied.
  final String targetResourceGuid;
  /// ID of network security group to which flow log will be applied.
  final String targetResourceId;
  /// Resource type.
  final String type;

  /// Creates a new [FlowLogResponse].
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
  /// [recordTypes] Optional field to filter network traffic logs based on flow states. Value of this field could be any comma separated combination string of letters B,C,E or D. B represents Begin, when a flow is created. C represents Continue for an ongoing flow generated at every five-minute interval. E represents End, when a flow is terminated. D represents Deny, when a flow is denied. If not specified, all network traffic will be logged.
  /// [retentionPolicy] Parameters that define the retention policy for flow log.
  /// [storageId] ID of the storage account which is used to store the flow log.
  /// [tags] Resource tags.
  /// [targetResourceGuid] Guid of network security group to which flow log will be applied.
  /// [targetResourceId] ID of network security group to which flow log will be applied.
  /// [type] Resource type.
  FlowLogResponse({
    this.enabled,
    this.enabledFilteringCriteria,
    required this.etag,
    this.flowAnalyticsConfiguration,
    this.format,
    this.id,
    this.identity,
    this.location,
    required this.name,
    required this.provisioningState,
    this.recordTypes,
    this.retentionPolicy,
    required this.storageId,
    this.tags,
    required this.targetResourceGuid,
    required this.targetResourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'enabledFilteringCriteria': ?enabledFilteringCriteria,
      'etag': etag,
      'flowAnalyticsConfiguration': ?flowAnalyticsConfiguration == null ? null : flowAnalyticsConfiguration!.toMap(),
      'format': ?format == null ? null : format!.toMap(),
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'recordTypes': ?recordTypes,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'storageId': storageId,
      'tags': ?tags,
      'targetResourceGuid': targetResourceGuid,
      'targetResourceId': targetResourceId,
      'type': type,
    };
  }

  factory FlowLogResponse.fromMap(Map<String, dynamic> map) {
    return FlowLogResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      enabledFilteringCriteria: map['enabledFilteringCriteria'] == null ? null : map['enabledFilteringCriteria'] as String,
      etag: map['etag'] as String,
      flowAnalyticsConfiguration: map['flowAnalyticsConfiguration'] == null ? null : TrafficAnalyticsPropertiesResponse.fromMap((map['flowAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : FlowLogFormatParametersResponse.fromMap((map['format'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      recordTypes: map['recordTypes'] == null ? null : map['recordTypes'] as String,
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicyParametersResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      storageId: map['storageId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceGuid: map['targetResourceGuid'] as String,
      targetResourceId: map['targetResourceId'] as String,
      type: map['type'] as String,
    );
  }
}

