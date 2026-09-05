// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_pool_scheduled_agent_update.dart';

/// Result data returned by getHostPool.
class GetHostPoolResult {
  /// The custom RDP properties string for the Virtual Desktop Host Pool.
  final String? customRdpProperties;
  /// The description for the Virtual Desktop Host Pool.
  final String? description;
  /// The friendly name for the Virtual Desktop Host Pool.
  final String? friendlyName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The type of load balancing performed by the Host Pool
  final String? loadBalancerType;
  /// The location/region where the Virtual Desktop Host Pool is located.
  final String? location;
  /// The maximum number of users that can have concurrent sessions on a session host.
  final int? maximumSessionsAllowed;
  final String? name;
  /// The type of personal desktop assignment in use by the Host Pool
  final String? personalDesktopAssignmentType;
  /// The preferred Application Group type for the Virtual Desktop Host Pool.
  final String? preferredAppGroupType;
  final String? resourceGroupName;
  /// A `scheduledAgentUpdates` block as defined below.
  final List<GetHostPoolScheduledAgentUpdate>? scheduledAgentUpdates;
  /// Returns `true` if the Start VM on Connection Feature is enabled.
  final bool? startVmOnConnect;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The type of the Virtual Desktop Host Pool.
  final String? type;
  /// Returns `true` if the Host Pool is in Validation mode.
  final bool? validateEnvironment;

  /// Creates a new [GetHostPoolResult].
  /// [customRdpProperties] The custom RDP properties string for the Virtual Desktop Host Pool.
  /// [description] The description for the Virtual Desktop Host Pool.
  /// [friendlyName] The friendly name for the Virtual Desktop Host Pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerType] The type of load balancing performed by the Host Pool
  /// [location] The location/region where the Virtual Desktop Host Pool is located.
  /// [maximumSessionsAllowed] The maximum number of users that can have concurrent sessions on a session host.
  /// [name] Optional.
  /// [personalDesktopAssignmentType] The type of personal desktop assignment in use by the Host Pool
  /// [preferredAppGroupType] The preferred Application Group type for the Virtual Desktop Host Pool.
  /// [resourceGroupName] Optional.
  /// [scheduledAgentUpdates] A `scheduledAgentUpdates` block as defined below.
  /// [startVmOnConnect] Returns `true` if the Start VM on Connection Feature is enabled.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the Virtual Desktop Host Pool.
  /// [validateEnvironment] Returns `true` if the Host Pool is in Validation mode.
  const GetHostPoolResult({
    this.customRdpProperties,
    this.description,
    this.friendlyName,
    this.id,
    this.loadBalancerType,
    this.location,
    this.maximumSessionsAllowed,
    this.name,
    this.personalDesktopAssignmentType,
    this.preferredAppGroupType,
    this.resourceGroupName,
    this.scheduledAgentUpdates,
    this.startVmOnConnect,
    this.tags,
    this.type,
    this.validateEnvironment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRdpProperties': ?customRdpProperties,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'id': ?id,
      'loadBalancerType': ?loadBalancerType,
      'location': ?location,
      'maximumSessionsAllowed': ?maximumSessionsAllowed,
      'name': ?name,
      'personalDesktopAssignmentType': ?personalDesktopAssignmentType,
      'preferredAppGroupType': ?preferredAppGroupType,
      'resourceGroupName': ?resourceGroupName,
      'scheduledAgentUpdates': ?(() { final guardedValue = scheduledAgentUpdates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHostPoolScheduledAgentUpdate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'startVmOnConnect': ?startVmOnConnect,
      'tags': ?tags,
      'type': ?type,
      'validateEnvironment': ?validateEnvironment,
    };
  }

  factory GetHostPoolResult.fromMap(Map<String, dynamic> map) {
    return GetHostPoolResult(
      customRdpProperties: (() { final guardedValue = map['customRdpProperties']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumSessionsAllowed: (() { final guardedValue = map['maximumSessionsAllowed']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      personalDesktopAssignmentType: (() { final guardedValue = map['personalDesktopAssignmentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredAppGroupType: (() { final guardedValue = map['preferredAppGroupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scheduledAgentUpdates: (() { final guardedValue = map['scheduledAgentUpdates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHostPoolScheduledAgentUpdate>(guardedValue, (value) => GetHostPoolScheduledAgentUpdate.fromMap((value as Map).cast<String, dynamic>())); })(),
      startVmOnConnect: (() { final guardedValue = map['startVmOnConnect']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validateEnvironment: (() { final guardedValue = map['validateEnvironment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
