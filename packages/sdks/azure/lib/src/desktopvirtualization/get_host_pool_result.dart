// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_pool_scheduled_agent_update.dart';

/// Result data returned by getHostPool.
class GetHostPoolResult {
  /// The custom RDP properties string for the Virtual Desktop Host Pool.
  final String customRdpProperties;
  /// The description for the Virtual Desktop Host Pool.
  final String description;
  /// The friendly name for the Virtual Desktop Host Pool.
  final String friendlyName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The type of load balancing performed by the Host Pool
  final String loadBalancerType;
  /// The location/region where the Virtual Desktop Host Pool is located.
  final String location;
  /// The maximum number of users that can have concurrent sessions on a session host.
  final int maximumSessionsAllowed;
  final String name;
  /// The type of personal desktop assignment in use by the Host Pool
  final String personalDesktopAssignmentType;
  /// The preferred Application Group type for the Virtual Desktop Host Pool.
  final String preferredAppGroupType;
  final String resourceGroupName;
  /// A `scheduled_agent_updates` block as defined below.
  final List<GetHostPoolScheduledAgentUpdate> scheduledAgentUpdates;
  /// Returns `true` if the Start VM on Connection Feature is enabled.
  final bool startVmOnConnect;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The type of the Virtual Desktop Host Pool.
  final String type;
  /// Returns `true` if the Host Pool is in Validation mode.
  final bool validateEnvironment;

  /// Creates a new [GetHostPoolResult].
  /// [customRdpProperties] The custom RDP properties string for the Virtual Desktop Host Pool.
  /// [description] The description for the Virtual Desktop Host Pool.
  /// [friendlyName] The friendly name for the Virtual Desktop Host Pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerType] The type of load balancing performed by the Host Pool
  /// [location] The location/region where the Virtual Desktop Host Pool is located.
  /// [maximumSessionsAllowed] The maximum number of users that can have concurrent sessions on a session host.
  /// [name] Required.
  /// [personalDesktopAssignmentType] The type of personal desktop assignment in use by the Host Pool
  /// [preferredAppGroupType] The preferred Application Group type for the Virtual Desktop Host Pool.
  /// [resourceGroupName] Required.
  /// [scheduledAgentUpdates] A `scheduled_agent_updates` block as defined below.
  /// [startVmOnConnect] Returns `true` if the Start VM on Connection Feature is enabled.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the Virtual Desktop Host Pool.
  /// [validateEnvironment] Returns `true` if the Host Pool is in Validation mode.
  const GetHostPoolResult({
    required this.customRdpProperties,
    required this.description,
    required this.friendlyName,
    required this.id,
    required this.loadBalancerType,
    required this.location,
    required this.maximumSessionsAllowed,
    required this.name,
    required this.personalDesktopAssignmentType,
    required this.preferredAppGroupType,
    required this.resourceGroupName,
    required this.scheduledAgentUpdates,
    required this.startVmOnConnect,
    required this.tags,
    required this.type,
    required this.validateEnvironment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRdpProperties': customRdpProperties,
      'description': description,
      'friendlyName': friendlyName,
      'id': id,
      'loadBalancerType': loadBalancerType,
      'location': location,
      'maximumSessionsAllowed': maximumSessionsAllowed,
      'name': name,
      'personalDesktopAssignmentType': personalDesktopAssignmentType,
      'preferredAppGroupType': preferredAppGroupType,
      'resourceGroupName': resourceGroupName,
      'scheduledAgentUpdates': pulumi.Input.encodeList<GetHostPoolScheduledAgentUpdate, Map<String, dynamic>>(scheduledAgentUpdates, (value) => value.toMap()),
      'startVmOnConnect': startVmOnConnect,
      'tags': tags,
      'type': type,
      'validateEnvironment': validateEnvironment,
    };
  }

  factory GetHostPoolResult.fromMap(Map<String, dynamic> map) {
    return GetHostPoolResult(
      customRdpProperties: map['customRdpProperties'] as String,
      description: map['description'] as String,
      friendlyName: map['friendlyName'] as String,
      id: map['id'] as String,
      loadBalancerType: map['loadBalancerType'] as String,
      location: map['location'] as String,
      maximumSessionsAllowed: map['maximumSessionsAllowed'] as int,
      name: map['name'] as String,
      personalDesktopAssignmentType: map['personalDesktopAssignmentType'] as String,
      preferredAppGroupType: map['preferredAppGroupType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scheduledAgentUpdates: pulumi.Input.decodeList<GetHostPoolScheduledAgentUpdate>(map['scheduledAgentUpdates']!, (value) => GetHostPoolScheduledAgentUpdate.fromMap((value as Map).cast<String, dynamic>())),
      startVmOnConnect: map['startVmOnConnect'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      validateEnvironment: map['validateEnvironment'] as bool,
    );
  }
}

