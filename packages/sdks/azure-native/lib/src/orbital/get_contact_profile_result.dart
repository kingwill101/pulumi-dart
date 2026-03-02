// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_link_response.dart';
import 'contact_profile_third_party_configuration_response.dart';
import 'contact_profiles_properties_response_network_configuration.dart';
import 'system_data_response.dart';

/// Result data returned by getContactProfile.
class GetContactProfileResult {
  /// Auto-tracking configuration.
  final String? autoTrackingConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  final String? eventHubUri;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Links of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  final List<ContactProfileLinkResponse> links;
  /// The geo-location where the resource lives
  final String location;
  /// Minimum viable elevation for the contact in decimal degrees. Used for listing the available contacts with a spacecraft at a given ground station.
  final double? minimumElevationDegrees;
  /// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  final String? minimumViableContactDuration;
  /// The name of the resource
  final String name;
  /// Network configuration of customer virtual network.
  final ContactProfilesPropertiesResponseNetworkConfiguration networkConfiguration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Third-party mission configuration of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  final List<ContactProfileThirdPartyConfigurationResponse>? thirdPartyConfigurations;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetContactProfileResult].
  /// [autoTrackingConfiguration] Auto-tracking configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventHubUri] ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [links] Links of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  /// [location] The geo-location where the resource lives
  /// [minimumElevationDegrees] Minimum viable elevation for the contact in decimal degrees. Used for listing the available contacts with a spacecraft at a given ground station.
  /// [minimumViableContactDuration] Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  /// [name] The name of the resource
  /// [networkConfiguration] Network configuration of customer virtual network.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [thirdPartyConfigurations] Third-party mission configuration of the Contact Profile. Describes RF links, modem processing, and IP endpoints.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetContactProfileResult({
    this.autoTrackingConfiguration,
    required this.azureApiVersion,
    this.eventHubUri,
    required this.id,
    required this.links,
    required this.location,
    this.minimumElevationDegrees,
    this.minimumViableContactDuration,
    required this.name,
    required this.networkConfiguration,
    required this.systemData,
    this.tags,
    this.thirdPartyConfigurations,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTrackingConfiguration': ?autoTrackingConfiguration,
      'azureApiVersion': azureApiVersion,
      'eventHubUri': ?eventHubUri,
      'id': id,
      'links': pulumi.Input.encodeList<ContactProfileLinkResponse, Map<String, dynamic>>(links, (value) => value.toMap()),
      'location': location,
      'minimumElevationDegrees': ?minimumElevationDegrees,
      'minimumViableContactDuration': ?minimumViableContactDuration,
      'name': name,
      'networkConfiguration': networkConfiguration.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'thirdPartyConfigurations': ?thirdPartyConfigurations == null ? null : pulumi.Input.encodeList<ContactProfileThirdPartyConfigurationResponse, Map<String, dynamic>>(thirdPartyConfigurations!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetContactProfileResult.fromMap(Map<String, dynamic> map) {
    return GetContactProfileResult(
      autoTrackingConfiguration: map['autoTrackingConfiguration'] == null ? null : map['autoTrackingConfiguration']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      eventHubUri: map['eventHubUri'] == null ? null : map['eventHubUri']! as String,
      id: map['id'] as String,
      links: pulumi.Input.decodeList<ContactProfileLinkResponse>(map['links'], (value) => ContactProfileLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      minimumElevationDegrees: map['minimumElevationDegrees'] == null ? null : map['minimumElevationDegrees']! as double,
      minimumViableContactDuration: map['minimumViableContactDuration'] == null ? null : map['minimumViableContactDuration']! as String,
      name: map['name'] as String,
      networkConfiguration: ContactProfilesPropertiesResponseNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      thirdPartyConfigurations: map['thirdPartyConfigurations'] == null ? null : pulumi.Input.decodeList<ContactProfileThirdPartyConfigurationResponse>(map['thirdPartyConfigurations']!, (value) => ContactProfileThirdPartyConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

