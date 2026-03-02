// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_pool_scheduled_agent_updates.dart';

/// {@template pulumi_desktopvirtualization_host_pool_host_pool_args_doc}
/// The set of arguments for HostPool.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_host_pool_host_pool_args_doc}
class HostPoolArgs {
  /// A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files).
  final pulumi.Input<String>? customRdpProperties;
  /// A description for the Virtual Desktop Host Pool.
  final pulumi.Input<String>? description;
  /// A friendly name for the Virtual Desktop Host Pool.
  final pulumi.Input<String>? friendlyName;
  /// `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`.
  /// `DepthFirst` load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold.
  /// `Persistent` should be used if the host pool type is `Personal`
  final pulumi.Input<String> loadBalancerType;
  /// The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host.
  /// Should only be set if the `type` of your Virtual Desktop Host Pool is `Pooled`.
  final pulumi.Input<int>? maximumSessionsAllowed;
  /// The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// `Automatic` assignment – The service will select an available host and assign it to an user. Possible values are `Automatic` and `Direct`. `Direct` Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `personal_desktop_assignment_type` is required if the `type` of your Virtual Desktop Host Pool is `Personal`
  final pulumi.Input<String>? personalDesktopAssignmentType;
  /// Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are `None`, `Desktop` or `RailApplications`. Default is `Desktop`.
  final pulumi.Input<String>? preferredAppGroupType;
  /// Whether public network access is allowed for the Virtual Desktop Host Pool. Possible values are `Enabled`, `Disabled`, `EnabledForClientsOnly` and `EnabledForSessionHostsOnly`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `scheduled_agent_updates` block as defined below. This enables control of when Agent Updates will be applied to Session Hosts.
  final pulumi.Input<HostPoolScheduledAgentUpdates>? scheduledAgentUpdates;
  /// Enables or disables the Start VM on Connection Feature. Defaults to `false`.
  final pulumi.Input<bool>? startVmOnConnect;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created.
  final pulumi.Input<String> type;
  /// Allows you to test service changes before they are deployed to production. Defaults to `false`.
  final pulumi.Input<bool>? validateEnvironment;
  /// A VM template for session hosts configuration within hostpool. This is a JSON string.
  final pulumi.Input<String>? vmTemplate;

  /// Creates a new [HostPoolArgs].
  /// [customRdpProperties] A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files).
  /// [description] A description for the Virtual Desktop Host Pool.
  /// [friendlyName] A friendly name for the Virtual Desktop Host Pool.
  /// [loadBalancerType] `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`.
  /// [location] The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created.
  /// [maximumSessionsAllowed] A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host.
  /// [name] The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  /// [personalDesktopAssignmentType] `Automatic` assignment – The service will select an available host and assign it to an user. Possible values are `Automatic` and `Direct`. `Direct` Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created.
  /// [preferredAppGroupType] Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are `None`, `Desktop` or `RailApplications`. Default is `Desktop`.
  /// [publicNetworkAccess] Whether public network access is allowed for the Virtual Desktop Host Pool. Possible values are `Enabled`, `Disabled`, `EnabledForClientsOnly` and `EnabledForSessionHostsOnly`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  /// [scheduledAgentUpdates] A `scheduled_agent_updates` block as defined below. This enables control of when Agent Updates will be applied to Session Hosts.
  /// [startVmOnConnect] Enables or disables the Start VM on Connection Feature. Defaults to `false`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created.
  /// [validateEnvironment] Allows you to test service changes before they are deployed to production. Defaults to `false`.
  /// [vmTemplate] A VM template for session hosts configuration within hostpool. This is a JSON string.
  HostPoolArgs({
    this.customRdpProperties,
    this.description,
    this.friendlyName,
    required this.loadBalancerType,
    this.location,
    this.maximumSessionsAllowed,
    this.name,
    this.personalDesktopAssignmentType,
    this.preferredAppGroupType,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.scheduledAgentUpdates,
    this.startVmOnConnect,
    this.tags,
    required this.type,
    this.validateEnvironment,
    this.vmTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRdpProperties': ?customRdpProperties,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'loadBalancerType': loadBalancerType,
      'location': ?location,
      'maximumSessionsAllowed': ?maximumSessionsAllowed,
      'name': ?name,
      'personalDesktopAssignmentType': ?personalDesktopAssignmentType,
      'preferredAppGroupType': ?preferredAppGroupType,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'scheduledAgentUpdates': ?pulumi.Input.mapOptionalInputValue<HostPoolScheduledAgentUpdates, Map<String, dynamic>>(scheduledAgentUpdates, (value) => value.toMap()),
      'startVmOnConnect': ?startVmOnConnect,
      'tags': ?tags,
      'type': type,
      'validateEnvironment': ?validateEnvironment,
      'vmTemplate': ?vmTemplate,
    };
  }

  factory HostPoolArgs.fromMap(Map<String, dynamic> map) {
    return HostPoolArgs(
      customRdpProperties: map['customRdpProperties'] == null ? null : (map['customRdpProperties'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      loadBalancerType: (map['loadBalancerType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maximumSessionsAllowed: map['maximumSessionsAllowed'] == null ? null : (map['maximumSessionsAllowed'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      personalDesktopAssignmentType: map['personalDesktopAssignmentType'] == null ? null : (map['personalDesktopAssignmentType'] as String).input(),
      preferredAppGroupType: map['preferredAppGroupType'] == null ? null : (map['preferredAppGroupType'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scheduledAgentUpdates: map['scheduledAgentUpdates'] == null ? null : (HostPoolScheduledAgentUpdates.fromMap((map['scheduledAgentUpdates'] as Map).cast<String, dynamic>())).input(),
      startVmOnConnect: map['startVmOnConnect'] == null ? null : (map['startVmOnConnect'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      validateEnvironment: map['validateEnvironment'] == null ? null : (map['validateEnvironment'] as bool).input(),
      vmTemplate: map['vmTemplate'] == null ? null : (map['vmTemplate'] as String).input(),
    );
  }
}

