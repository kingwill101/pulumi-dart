// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_pool_scheduled_agent_updates.dart';

/// Input properties used for looking up and filtering HostPool resources.
class HostPoolState {
  /// A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files).
  final pulumi.Input<String>? customRdpProperties;
  /// A description for the Virtual Desktop Host Pool.
  final pulumi.Input<String>? description;
  /// A friendly name for the Virtual Desktop Host Pool.
  final pulumi.Input<String>? friendlyName;
  /// `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`.
  /// `DepthFirst` load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold.
  /// `Persistent` should be used if the host pool type is `Personal`
  final pulumi.Input<String>? loadBalancerType;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A `scheduled_agent_updates` block as defined below. This enables control of when Agent Updates will be applied to Session Hosts.
  final pulumi.Input<HostPoolScheduledAgentUpdates>? scheduledAgentUpdates;
  /// Enables or disables the Start VM on Connection Feature. Defaults to `false`.
  final pulumi.Input<bool>? startVmOnConnect;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// Allows you to test service changes before they are deployed to production. Defaults to `false`.
  final pulumi.Input<bool>? validateEnvironment;
  /// A VM template for session hosts configuration within hostpool. This is a JSON string.
  final pulumi.Input<String>? vmTemplate;

  /// Creates a new [HostPoolState].
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
  HostPoolState({
    pulumi.Output<String>? customRdpProperties,
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<String>? loadBalancerType,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maximumSessionsAllowed,
    pulumi.Output<String>? name,
    pulumi.Output<String>? personalDesktopAssignmentType,
    pulumi.Output<String>? preferredAppGroupType,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<HostPoolScheduledAgentUpdates>? scheduledAgentUpdates,
    pulumi.Output<bool>? startVmOnConnect,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<bool>? validateEnvironment,
    pulumi.Output<String>? vmTemplate,
  }) :
      customRdpProperties = pulumi.Input.asOptionalInput<String>(customRdpProperties),
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      loadBalancerType = pulumi.Input.asOptionalInput<String>(loadBalancerType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumSessionsAllowed = pulumi.Input.asOptionalInput<int>(maximumSessionsAllowed),
      name = pulumi.Input.asOptionalInput<String>(name),
      personalDesktopAssignmentType = pulumi.Input.asOptionalInput<String>(personalDesktopAssignmentType),
      preferredAppGroupType = pulumi.Input.asOptionalInput<String>(preferredAppGroupType),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scheduledAgentUpdates = pulumi.Input.asOptionalInput<HostPoolScheduledAgentUpdates>(scheduledAgentUpdates),
      startVmOnConnect = pulumi.Input.asOptionalInput<bool>(startVmOnConnect),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      validateEnvironment = pulumi.Input.asOptionalInput<bool>(validateEnvironment),
      vmTemplate = pulumi.Input.asOptionalInput<String>(vmTemplate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRdpProperties': ?customRdpProperties,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'loadBalancerType': ?loadBalancerType,
      'location': ?location,
      'maximumSessionsAllowed': ?maximumSessionsAllowed,
      'name': ?name,
      'personalDesktopAssignmentType': ?personalDesktopAssignmentType,
      'preferredAppGroupType': ?preferredAppGroupType,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'scheduledAgentUpdates': ?pulumi.Input.mapOptionalInputValue<HostPoolScheduledAgentUpdates, Map<String, dynamic>>(scheduledAgentUpdates, (value) => value.toMap()),
      'startVmOnConnect': ?startVmOnConnect,
      'tags': ?tags,
      'type': ?type,
      'validateEnvironment': ?validateEnvironment,
      'vmTemplate': ?vmTemplate,
    };
  }

  factory HostPoolState.fromMap(Map<String, dynamic> map) {
    return HostPoolState(
      customRdpProperties: map['customRdpProperties'] == null ? null : pulumi.Output.create<String>(map['customRdpProperties'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      loadBalancerType: map['loadBalancerType'] == null ? null : pulumi.Output.create<String>(map['loadBalancerType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumSessionsAllowed: map['maximumSessionsAllowed'] == null ? null : pulumi.Output.create<int>(map['maximumSessionsAllowed'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      personalDesktopAssignmentType: map['personalDesktopAssignmentType'] == null ? null : pulumi.Output.create<String>(map['personalDesktopAssignmentType'] as String),
      preferredAppGroupType: map['preferredAppGroupType'] == null ? null : pulumi.Output.create<String>(map['preferredAppGroupType'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduledAgentUpdates: map['scheduledAgentUpdates'] == null ? null : pulumi.Output.create<HostPoolScheduledAgentUpdates>(HostPoolScheduledAgentUpdates.fromMap((map['scheduledAgentUpdates'] as Map).cast<String, dynamic>())),
      startVmOnConnect: map['startVmOnConnect'] == null ? null : pulumi.Output.create<bool>(map['startVmOnConnect'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      validateEnvironment: map['validateEnvironment'] == null ? null : pulumi.Output.create<bool>(map['validateEnvironment'] as bool),
      vmTemplate: map['vmTemplate'] == null ? null : pulumi.Output.create<String>(map['vmTemplate'] as String),
    );
  }
}

