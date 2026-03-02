// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_link.dart';

/// Input properties used for looking up and filtering ContactProfile resources.
class ContactProfileState {
  /// Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`.
  final pulumi.Input<String>? autoTracking;
  /// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  final pulumi.Input<String>? eventHubUri;
  /// A list of spacecraft links. A `links` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ContactProfileLink>>? links;
  /// The location where the contact profile exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Maximum elevation of the antenna during the contact in decimal degrees.
  final pulumi.Input<double>? minimumElevationDegrees;
  /// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  final pulumi.Input<String>? minimumVariableContactDuration;
  /// The name of the contact profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkConfigurationSubnetId;
  /// The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ContactProfileState].
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
  ContactProfileState({
    this.autoTracking,
    this.eventHubUri,
    this.links,
    this.location,
    this.minimumElevationDegrees,
    this.minimumVariableContactDuration,
    this.name,
    this.networkConfigurationSubnetId,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTracking': ?autoTracking,
      'eventHubUri': ?eventHubUri,
      'links': ?pulumi.Input.mapOptionalInputValue<List<ContactProfileLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ContactProfileLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'minimumElevationDegrees': ?minimumElevationDegrees,
      'minimumVariableContactDuration': ?minimumVariableContactDuration,
      'name': ?name,
      'networkConfigurationSubnetId': ?networkConfigurationSubnetId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ContactProfileState.fromMap(Map<String, dynamic> map) {
    return ContactProfileState(
      autoTracking: map['autoTracking'] == null ? null : (map['autoTracking'] as String).input(),
      eventHubUri: map['eventHubUri'] == null ? null : (map['eventHubUri'] as String).input(),
      links: map['links'] == null ? null : (pulumi.Input.decodeList<ContactProfileLink>(map['links'], (value) => ContactProfileLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minimumElevationDegrees: map['minimumElevationDegrees'] == null ? null : (map['minimumElevationDegrees'] as double).input(),
      minimumVariableContactDuration: map['minimumVariableContactDuration'] == null ? null : (map['minimumVariableContactDuration'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfigurationSubnetId: map['networkConfigurationSubnetId'] == null ? null : (map['networkConfigurationSubnetId'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

