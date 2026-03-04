// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_panorama_destination_nat.dart';
import 'next_generation_firewall_virtual_network_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_network_panorama_network_profile.dart';

/// {@template pulumi_paloalto_next_generation_firewall_virtual_network_panorama_next_generation_firewall_virtual_network_panorama_args_doc}
/// The set of arguments for NextGenerationFirewallVirtualNetworkPanorama.
/// {@endtemplate}
/// {@macro pulumi_paloalto_next_generation_firewall_virtual_network_panorama_next_generation_firewall_virtual_network_panorama_args_doc}
class NextGenerationFirewallVirtualNetworkPanoramaArgs {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<
    List<NextGenerationFirewallVirtualNetworkPanoramaDestinationNat>
  >?
  destinationNats;

  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaDnsSettings>?
  dnsSettings;

  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String>? location;

  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;

  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String>? name;

  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile>
  networkProfile;

  /// The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group.
  final pulumi.Input<String> panoramaBase64Config;

  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// &gt; **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String>? planId;

  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaArgs].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [panoramaBase64Config] The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama.
  NextGenerationFirewallVirtualNetworkPanoramaArgs({
    this.destinationNats,
    this.dnsSettings,
    this.location,
    this.marketplaceOfferId,
    this.name,
    required this.networkProfile,
    required this.panoramaBase64Config,
    this.planId,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats':
          ?pulumi.Input.mapOptionalInputValue<
            List<NextGenerationFirewallVirtualNetworkPanoramaDestinationNat>,
            List<Map<String, dynamic>>
          >(
            destinationNats,
            (value) =>
                pulumi.Input.encodeList<
                  NextGenerationFirewallVirtualNetworkPanoramaDestinationNat,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dnsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            NextGenerationFirewallVirtualNetworkPanoramaDnsSettings,
            Map<String, dynamic>
          >(dnsSettings, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile':
          pulumi.Input.mapInputValue<
            NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile,
            Map<String, dynamic>
          >(networkProfile, (value) => value.toMap()),
      'panoramaBase64Config': panoramaBase64Config,
      'planId': ?planId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NextGenerationFirewallVirtualNetworkPanoramaArgs(
      destinationNats: (() {
        final guardedValue = map['destinationNats'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NextGenerationFirewallVirtualNetworkPanoramaDestinationNat
          >(
            guardedValue,
            (value) =>
                NextGenerationFirewallVirtualNetworkPanoramaDestinationNat.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      dnsSettings: (() {
        final guardedValue = map['dnsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NextGenerationFirewallVirtualNetworkPanoramaDnsSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      marketplaceOfferId: (() {
        final guardedValue = map['marketplaceOfferId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkProfile: pulumi.Input.fromValue(
        NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile.fromMap(
          (map['networkProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      panoramaBase64Config: pulumi.Input.fromValue(
        map['panoramaBase64Config'] as String,
      ),
      planId: (() {
        final guardedValue = map['planId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
