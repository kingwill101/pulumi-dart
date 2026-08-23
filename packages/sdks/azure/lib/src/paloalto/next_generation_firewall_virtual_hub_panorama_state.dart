// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_panorama_destination_nat.dart';
import 'next_generation_firewall_virtual_hub_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_panorama_network_profile.dart';
import 'next_generation_firewall_virtual_hub_panorama_panorama.dart';

/// Input properties used for looking up and filtering NextGenerationFirewallVirtualHubPanorama resources.
class NextGenerationFirewallVirtualHubPanoramaState {
  /// One or more `destinationNat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>? destinationNats;
  /// A `dnsSettings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaDnsSettings>? dnsSettings;
  /// The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? location;
  /// The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? name;
  /// A `networkProfile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>? networkProfile;
  /// The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  final pulumi.Input<String>? panoramaBase64Config;
  final pulumi.Input<List<NextGenerationFirewallVirtualHubPanoramaPanorama>>? panoramas;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// &gt; **Note:** The former `planId` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `planId` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaState].
  /// [destinationNats] One or more `destinationNat` blocks as defined below.
  /// [dnsSettings] A `dnsSettings` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [networkProfile] A `networkProfile` block as defined below.
  /// [panoramaBase64Config] The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  /// [panoramas] Optional.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  const NextGenerationFirewallVirtualHubPanoramaState({
    this.destinationNats,
    this.dnsSettings,
    this.location,
    this.marketplaceOfferId,
    this.name,
    this.networkProfile,
    this.panoramaBase64Config,
    this.panoramas,
    this.planId,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualHubPanoramaDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubPanoramaDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubPanoramaNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'panoramaBase64Config': ?panoramaBase64Config,
      'panoramas': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualHubPanoramaPanorama>, List<Map<String, dynamic>>>(panoramas, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualHubPanoramaPanorama, Map<String, dynamic>>(value, (value) => value.toMap())),
      'planId': ?planId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualHubPanoramaState.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaState(
      destinationNats: (() { final guardedValue = map['destinationNats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NextGenerationFirewallVirtualHubPanoramaDestinationNat>(guardedValue, (value) => NextGenerationFirewallVirtualHubPanoramaDestinationNat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubPanoramaDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceOfferId: (() { final guardedValue = map['marketplaceOfferId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubPanoramaNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      panoramaBase64Config: (() { final guardedValue = map['panoramaBase64Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      panoramas: (() { final guardedValue = map['panoramas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NextGenerationFirewallVirtualHubPanoramaPanorama>(guardedValue, (value) => NextGenerationFirewallVirtualHubPanoramaPanorama.fromMap((value as Map).cast<String, dynamic>()))); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
