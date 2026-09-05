// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_link.dart';

/// {@template pulumi_orbital_contact_profile_contact_profile_args_doc}
/// The set of arguments for ContactProfile.
/// {@endtemplate}
/// {@macro pulumi_orbital_contact_profile_contact_profile_args_doc}
class ContactProfileArgs {
  /// Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`.
  final pulumi.Input<String> autoTracking;
  /// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  final pulumi.Input<String?>? eventHubUri;
  /// A list of spacecraft links. A `links` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ContactProfileLink>> links;
  /// The location where the contact profile exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Maximum elevation of the antenna during the contact in decimal degrees.
  final pulumi.Input<double?>? minimumElevationDegrees;
  /// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  final pulumi.Input<String> minimumVariableContactDuration;
  /// The name of the contact profile. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkConfigurationSubnetId;
  /// The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ContactProfileArgs].
  /// [autoTracking] Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`.
  /// [eventHubUri] ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  /// [links] A list of spacecraft links. A `links` block as defined below. Changing this forces a new resource to be created.
  /// [location] The location where the contact profile exists. Changing this forces a new resource to be created.
  /// [minimumElevationDegrees] Maximum elevation of the antenna during the contact in decimal degrees.
  /// [minimumVariableContactDuration] Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  /// [name] The name of the contact profile. Changing this forces a new resource to be created.
  /// [networkConfigurationSubnetId] ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const ContactProfileArgs({
    required this.autoTracking,
    this.eventHubUri,
    required this.links,
    this.location,
    this.minimumElevationDegrees,
    required this.minimumVariableContactDuration,
    this.name,
    required this.networkConfigurationSubnetId,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTracking': autoTracking,
      'eventHubUri': ?eventHubUri,
      'links': pulumi.Input.mapInputValue<List<ContactProfileLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ContactProfileLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'minimumElevationDegrees': ?minimumElevationDegrees,
      'minimumVariableContactDuration': minimumVariableContactDuration,
      'name': ?name,
      'networkConfigurationSubnetId': networkConfigurationSubnetId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ContactProfileArgs.fromMap(Map<String, dynamic> map) {
    return ContactProfileArgs(
      autoTracking: pulumi.Input.fromValue(map['autoTracking'] as String),
      eventHubUri: (() { final guardedValue = map['eventHubUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      links: pulumi.Input.fromValue(pulumi.Input.decodeList<ContactProfileLink>(map['links']!, (value) => ContactProfileLink.fromMap((value as Map).cast<String, dynamic>()))),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumElevationDegrees: (() { final guardedValue = map['minimumElevationDegrees']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minimumVariableContactDuration: pulumi.Input.fromValue(map['minimumVariableContactDuration'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfigurationSubnetId: pulumi.Input.fromValue(map['networkConfigurationSubnetId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
