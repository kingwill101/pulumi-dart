// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_format_parameters_response.dart';
import 'managed_service_identity_response.dart';
import 'retention_policy_parameters_response.dart';
import 'traffic_analytics_properties_response.dart';

/// A flow log resource.
class FlowLogResponse {
  /// Flag to enable/disable flow logging.
  final pulumi.Input<bool>? enabled;
  /// Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  final pulumi.Input<String>? enabledFilteringCriteria;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Parameters that define the configuration of traffic analytics.
  final pulumi.Input<TrafficAnalyticsPropertiesResponse>? flowAnalyticsConfiguration;
  /// Parameters that define the flow log format.
  final pulumi.Input<FlowLogFormatParametersResponse>? format;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// FlowLog resource Managed Identity
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the flow log.
  final pulumi.Input<String> provisioningState;
  /// Optional field to filter network traffic logs based on flow states. Value of this field could be any comma separated combination string of letters B,C,E or D. B represents Begin, when a flow is created. C represents Continue for an ongoing flow generated at every five-minute interval. E represents End, when a flow is terminated. D represents Deny, when a flow is denied. If not specified, all network traffic will be logged.
  final pulumi.Input<String>? recordTypes;
  /// Parameters that define the retention policy for flow log.
  final pulumi.Input<RetentionPolicyParametersResponse>? retentionPolicy;
  /// ID of the storage account which is used to store the flow log.
  final pulumi.Input<String> storageId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Guid of network security group to which flow log will be applied.
  final pulumi.Input<String> targetResourceGuid;
  /// ID of network security group to which flow log will be applied.
  final pulumi.Input<String> targetResourceId;
  /// Resource type.
  final pulumi.Input<String> type;

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
      'flowAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<TrafficAnalyticsPropertiesResponse, Map<String, dynamic>>(flowAnalyticsConfiguration, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<FlowLogFormatParametersResponse, Map<String, dynamic>>(format, (value) => value.toMap()),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'recordTypes': ?recordTypes,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyParametersResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'storageId': storageId,
      'tags': ?tags,
      'targetResourceGuid': targetResourceGuid,
      'targetResourceId': targetResourceId,
      'type': type,
    };
  }

  factory FlowLogResponse.fromMap(Map<String, dynamic> map) {
    return FlowLogResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      enabledFilteringCriteria: map['enabledFilteringCriteria'] == null ? null : (map['enabledFilteringCriteria']! as String).input(),
      etag: (map['etag'] as String).input(),
      flowAnalyticsConfiguration: map['flowAnalyticsConfiguration'] == null ? null : (TrafficAnalyticsPropertiesResponse.fromMap((map['flowAnalyticsConfiguration']! as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (FlowLogFormatParametersResponse.fromMap((map['format']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      recordTypes: map['recordTypes'] == null ? null : (map['recordTypes']! as String).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (RetentionPolicyParametersResponse.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input(),
      storageId: (map['storageId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceGuid: (map['targetResourceGuid'] as String).input(),
      targetResourceId: (map['targetResourceId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

