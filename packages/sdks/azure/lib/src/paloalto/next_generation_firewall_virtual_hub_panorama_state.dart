// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_panorama_destination_nat.dart';
import 'next_generation_firewall_virtual_hub_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_panorama_network_profile.dart';
import 'next_generation_firewall_virtual_hub_panorama_panorama.dart';

/// Input properties used for looking up and filtering NextGenerationFirewallVirtualHubPanorama resources.
class NextGenerationFirewallVirtualHubPanoramaState {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>? destinationNats;
  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaDnsSettings>? dnsSettings;
  /// The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? location;
  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>? networkProfile;
  /// The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  final pulumi.Input<String>? panoramaBase64Config;
  final pulumi.Input<List<NextGenerationFirewallVirtualHubPanoramaPanorama>>? panoramas;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// > **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaState].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [panoramaBase64Config] The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  /// [panoramas] Optional.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  NextGenerationFirewallVirtualHubPanoramaState({
    pulumi.Output<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>? destinationNats,
    pulumi.Output<NextGenerationFirewallVirtualHubPanoramaDnsSettings>? dnsSettings,
    pulumi.Output<String>? location,
    pulumi.Output<String>? marketplaceOfferId,
    pulumi.Output<String>? name,
    pulumi.Output<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>? networkProfile,
    pulumi.Output<String>? panoramaBase64Config,
    pulumi.Output<List<NextGenerationFirewallVirtualHubPanoramaPanorama>>? panoramas,
    pulumi.Output<String>? planId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      destinationNats = pulumi.Input.asOptionalInput<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>(destinationNats),
      dnsSettings = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualHubPanoramaDnsSettings>(dnsSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceOfferId = pulumi.Input.asOptionalInput<String>(marketplaceOfferId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>(networkProfile),
      panoramaBase64Config = pulumi.Input.asOptionalInput<String>(panoramaBase64Config),
      panoramas = pulumi.Input.asOptionalInput<List<NextGenerationFirewallVirtualHubPanoramaPanorama>>(panoramas),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      destinationNats: map['destinationNats'] == null ? null : pulumi.Output.create<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>(pulumi.Input.decodeList<NextGenerationFirewallVirtualHubPanoramaDestinationNat>(map['destinationNats'], (value) => NextGenerationFirewallVirtualHubPanoramaDestinationNat.fromMap((value as Map).cast<String, dynamic>()))),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualHubPanoramaDnsSettings>(NextGenerationFirewallVirtualHubPanoramaDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : pulumi.Output.create<String>(map['marketplaceOfferId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>(NextGenerationFirewallVirtualHubPanoramaNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      panoramaBase64Config: map['panoramaBase64Config'] == null ? null : pulumi.Output.create<String>(map['panoramaBase64Config'] as String),
      panoramas: map['panoramas'] == null ? null : pulumi.Output.create<List<NextGenerationFirewallVirtualHubPanoramaPanorama>>(pulumi.Input.decodeList<NextGenerationFirewallVirtualHubPanoramaPanorama>(map['panoramas'], (value) => NextGenerationFirewallVirtualHubPanoramaPanorama.fromMap((value as Map).cast<String, dynamic>()))),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

