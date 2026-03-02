// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_destination_nat.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_identity.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_network_profile.dart';

/// {@template pulumi_paloalto_next_generation_firewall_virtual_hub_strata_cloud_manager_next_generation_firewall_virtual_hub_strata_cloud_manager_args_doc}
/// The set of arguments for NextGenerationFirewallVirtualHubStrataCloudManager.
/// {@endtemplate}
/// {@macro pulumi_paloalto_next_generation_firewall_virtual_hub_strata_cloud_manager_next_generation_firewall_virtual_hub_strata_cloud_manager_args_doc}
class NextGenerationFirewallVirtualHubStrataCloudManagerArgs {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>>? destinationNats;
  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings>? dnsSettings;
  /// A `identity` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerIdentity>? identity;
  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  final pulumi.Input<String>? location;
  /// The ID of the marketplace offer. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile> networkProfile;
  /// The ID of the billing plan. Defaults to `panw-cngfw-payg`.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Strata Cloud Manager name which is intended to manage the policy for this firewall.
  final pulumi.Input<String> strataCloudManagerTenantName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerArgs].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  /// [marketplaceOfferId] The ID of the marketplace offer. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [planId] The ID of the billing plan. Defaults to `panw-cngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  /// [strataCloudManagerTenantName] Strata Cloud Manager name which is intended to manage the policy for this firewall.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager.
  NextGenerationFirewallVirtualHubStrataCloudManagerArgs({
    this.destinationNats,
    this.dnsSettings,
    this.identity,
    this.location,
    this.marketplaceOfferId,
    this.name,
    required this.networkProfile,
    this.planId,
    required this.resourceGroupName,
    required this.strataCloudManagerTenantName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubStrataCloudManagerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'planId': ?planId,
      'resourceGroupName': resourceGroupName,
      'strataCloudManagerTenantName': strataCloudManagerTenantName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerArgs.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerArgs(
      destinationNats: map['destinationNats'] == null ? null : (pulumi.Input.decodeList<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>(map['destinationNats']!, (value) => NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (NextGenerationFirewallVirtualHubStrataCloudManagerIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : (map['marketplaceOfferId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkProfile: (NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      strataCloudManagerTenantName: (map['strataCloudManagerTenantName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

