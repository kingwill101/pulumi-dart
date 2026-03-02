// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_panorama_destination_nat.dart';
import 'next_generation_firewall_virtual_network_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_network_panorama_network_profile.dart';
import 'next_generation_firewall_virtual_network_panorama_panorama.dart';

/// Input properties used for looking up and filtering NextGenerationFirewallVirtualNetworkPanorama resources.
class NextGenerationFirewallVirtualNetworkPanoramaState {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualNetworkPanoramaDestinationNat>>? destinationNats;
  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaDnsSettings>? dnsSettings;
  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String>? location;
  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile>? networkProfile;
  /// The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group.
  final pulumi.Input<String>? panoramaBase64Config;
  /// A `panorama` block as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualNetworkPanoramaPanorama>>? panoramas;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// > **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaState].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [panoramaBase64Config] The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group.
  /// [panoramas] A `panorama` block as defined below.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama.
  NextGenerationFirewallVirtualNetworkPanoramaState({
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
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualNetworkPanoramaDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualNetworkPanoramaDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkPanoramaDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'panoramaBase64Config': ?panoramaBase64Config,
      'panoramas': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualNetworkPanoramaPanorama>, List<Map<String, dynamic>>>(panoramas, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualNetworkPanoramaPanorama, Map<String, dynamic>>(value, (value) => value.toMap())),
      'planId': ?planId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaState.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaState(
      destinationNats: map['destinationNats'] == null ? null : (pulumi.Input.decodeList<NextGenerationFirewallVirtualNetworkPanoramaDestinationNat>(map['destinationNats']!, (value) => NextGenerationFirewallVirtualNetworkPanoramaDestinationNat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (NextGenerationFirewallVirtualNetworkPanoramaDnsSettings.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : (map['marketplaceOfferId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())).input(),
      panoramaBase64Config: map['panoramaBase64Config'] == null ? null : (map['panoramaBase64Config']! as String).input(),
      panoramas: map['panoramas'] == null ? null : (pulumi.Input.decodeList<NextGenerationFirewallVirtualNetworkPanoramaPanorama>(map['panoramas']!, (value) => NextGenerationFirewallVirtualNetworkPanoramaPanorama.fromMap((value as Map).cast<String, dynamic>()))).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

