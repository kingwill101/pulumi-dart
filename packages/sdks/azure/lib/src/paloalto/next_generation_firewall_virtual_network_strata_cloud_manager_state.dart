// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_dns_settings.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_identity.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_network_profile.dart';

/// Input properties used for looking up and filtering NextGenerationFirewallVirtualNetworkStrataCloudManager resources.
class NextGenerationFirewallVirtualNetworkStrataCloudManagerState {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>>? destinationNats;
  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings>? dnsSettings;
  /// An `identity` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity>? identity;
  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  final pulumi.Input<String>? location;
  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile>? networkProfile;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cngfw-payg`.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Strata Cloud Manager name which is intended to manage the policy for this firewall.
  final pulumi.Input<String>? strataCloudManagerTenantName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerState].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  /// [strataCloudManagerTenantName] Strata Cloud Manager name which is intended to manage the policy for this firewall.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerState({
    this.destinationNats,
    this.dnsSettings,
    this.identity,
    this.location,
    this.marketplaceOfferId,
    this.name,
    this.networkProfile,
    this.planId,
    this.resourceGroupName,
    this.strataCloudManagerTenantName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'planId': ?planId,
      'resourceGroupName': ?resourceGroupName,
      'strataCloudManagerTenantName': ?strataCloudManagerTenantName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerState.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerState(
      destinationNats: map['destinationNats'] == null ? null : (pulumi.Input.decodeList<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>(map['destinationNats']!, (value) => NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : (map['marketplaceOfferId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      strataCloudManagerTenantName: map['strataCloudManagerTenantName'] == null ? null : (map['strataCloudManagerTenantName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

