// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_tracking_configuration.dart';
import 'contact_profile_link.dart';
import 'contact_profile_third_party_configuration.dart';
import 'contact_profiles_properties_network_configuration.dart';

/// {@template pulumi_orbital_contact_profile_args_doc}
/// The set of arguments for ContactProfile.
/// {@endtemplate}
/// {@macro pulumi_orbital_contact_profile_args_doc}
class ContactProfileArgs {
  /// Auto-tracking configuration.
  final pulumi.Input<AutoTrackingConfiguration>? autoTrackingConfiguration;
  /// Contact Profile name.
  final pulumi.Input<String>? contactProfileName;
  /// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  final pulumi.Input<String>? eventHubUri;
  /// Links of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  final pulumi.Input<List<ContactProfileLink>> links;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Minimum viable elevation for the contact in decimal degrees. Used for listing the available contacts with a spacecraft at a given ground station.
  final pulumi.Input<double>? minimumElevationDegrees;
  /// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  final pulumi.Input<String>? minimumViableContactDuration;
  /// Network configuration of customer virtual network.
  final pulumi.Input<ContactProfilesPropertiesNetworkConfiguration> networkConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Third-party mission configuration of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  final pulumi.Input<List<ContactProfileThirdPartyConfiguration>>? thirdPartyConfigurations;

  /// Creates a new [ContactProfileArgs].
  /// [autoTrackingConfiguration] Auto-tracking configuration.
  /// [contactProfileName] Contact Profile name.
  /// [eventHubUri] ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  /// [links] Links of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  /// [location] The geo-location where the resource lives
  /// [minimumElevationDegrees] Minimum viable elevation for the contact in decimal degrees. Used for listing the available contacts with a spacecraft at a given ground station.
  /// [minimumViableContactDuration] Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  /// [networkConfiguration] Network configuration of customer virtual network.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [thirdPartyConfigurations] Third-party mission configuration of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  ContactProfileArgs({
    this.autoTrackingConfiguration,
    this.contactProfileName,
    this.eventHubUri,
    required this.links,
    this.location,
    this.minimumElevationDegrees,
    this.minimumViableContactDuration,
    required this.networkConfiguration,
    required this.resourceGroupName,
    this.tags,
    this.thirdPartyConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTrackingConfiguration': ?pulumi.Input.mapOptionalInputValue<AutoTrackingConfiguration, String>(autoTrackingConfiguration, (value) => value.value),
      'contactProfileName': ?contactProfileName,
      'eventHubUri': ?eventHubUri,
      'links': pulumi.Input.mapInputValue<List<ContactProfileLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ContactProfileLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'minimumElevationDegrees': ?minimumElevationDegrees,
      'minimumViableContactDuration': ?minimumViableContactDuration,
      'networkConfiguration': pulumi.Input.mapInputValue<ContactProfilesPropertiesNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'thirdPartyConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ContactProfileThirdPartyConfiguration>, List<Map<String, dynamic>>>(thirdPartyConfigurations, (value) => pulumi.Input.encodeList<ContactProfileThirdPartyConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContactProfileArgs.fromMap(Map<String, dynamic> map) {
    return ContactProfileArgs(
      autoTrackingConfiguration: map['autoTrackingConfiguration'] == null ? null : (AutoTrackingConfiguration.fromValue(map['autoTrackingConfiguration']! as String)).input(),
      contactProfileName: map['contactProfileName'] == null ? null : (map['contactProfileName']! as String).input(),
      eventHubUri: map['eventHubUri'] == null ? null : (map['eventHubUri']! as String).input(),
      links: (pulumi.Input.decodeList<ContactProfileLink>(map['links'], (value) => ContactProfileLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minimumElevationDegrees: map['minimumElevationDegrees'] == null ? null : (map['minimumElevationDegrees']! as double).input(),
      minimumViableContactDuration: map['minimumViableContactDuration'] == null ? null : (map['minimumViableContactDuration']! as String).input(),
      networkConfiguration: (ContactProfilesPropertiesNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      thirdPartyConfigurations: map['thirdPartyConfigurations'] == null ? null : (pulumi.Input.decodeList<ContactProfileThirdPartyConfiguration>(map['thirdPartyConfigurations']!, (value) => ContactProfileThirdPartyConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

