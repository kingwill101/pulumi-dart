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
    pulumi.Output<List<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>>? destinationNats,
    pulumi.Output<NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings>? dnsSettings,
    pulumi.Output<NextGenerationFirewallVirtualHubStrataCloudManagerIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? marketplaceOfferId,
    pulumi.Output<String>? name,
    required pulumi.Output<NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile> networkProfile,
    pulumi.Output<String>? planId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> strataCloudManagerTenantName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      destinationNats = pulumi.Input.asOptionalInput<List<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>>(destinationNats),
      dnsSettings = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings>(dnsSettings),
      identity = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualHubStrataCloudManagerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceOfferId = pulumi.Input.asOptionalInput<String>(marketplaceOfferId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asInput<NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile>(networkProfile),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      strataCloudManagerTenantName = pulumi.Input.asInput<String>(strataCloudManagerTenantName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      destinationNats: map['destinationNats'] == null ? null : pulumi.Output.create<List<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>>(pulumi.Input.decodeList<NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat>(map['destinationNats'], (value) => NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat.fromMap((value as Map).cast<String, dynamic>()))),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings>(NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualHubStrataCloudManagerIdentity>(NextGenerationFirewallVirtualHubStrataCloudManagerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : pulumi.Output.create<String>(map['marketplaceOfferId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: pulumi.Output.create<NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile>(NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      strataCloudManagerTenantName: pulumi.Output.create<String>(map['strataCloudManagerTenantName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

