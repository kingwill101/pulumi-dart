// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_dns_settings.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_identity.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_network_profile.dart';

/// {@template pulumi_paloalto_next_generation_firewall_virtual_network_strata_cloud_manager_next_generation_firewall_virtual_network_strata_cloud_manager_args_doc}
/// The set of arguments for NextGenerationFirewallVirtualNetworkStrataCloudManager.
/// {@endtemplate}
/// {@macro pulumi_paloalto_next_generation_firewall_virtual_network_strata_cloud_manager_next_generation_firewall_virtual_network_strata_cloud_manager_args_doc}
class NextGenerationFirewallVirtualNetworkStrataCloudManagerArgs {
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
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile> networkProfile;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cngfw-payg`.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Strata Cloud Manager name which is intended to manage the policy for this firewall.
  final pulumi.Input<String> strataCloudManagerTenantName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerArgs].
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
  NextGenerationFirewallVirtualNetworkStrataCloudManagerArgs({
    pulumi.Output<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>>? destinationNats,
    pulumi.Output<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings>? dnsSettings,
    pulumi.Output<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? marketplaceOfferId,
    pulumi.Output<String>? name,
    required pulumi.Output<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile> networkProfile,
    pulumi.Output<String>? planId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> strataCloudManagerTenantName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      destinationNats = pulumi.Input.asOptionalInput<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>>(destinationNats),
      dnsSettings = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings>(dnsSettings),
      identity = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceOfferId = pulumi.Input.asOptionalInput<String>(marketplaceOfferId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asInput<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile>(networkProfile),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      strataCloudManagerTenantName = pulumi.Input.asInput<String>(strataCloudManagerTenantName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'planId': ?planId,
      'resourceGroupName': resourceGroupName,
      'strataCloudManagerTenantName': strataCloudManagerTenantName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerArgs.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerArgs(
      destinationNats: map['destinationNats'] == null ? null : pulumi.Output.create<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>>(pulumi.Input.decodeList<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>(map['destinationNats'], (value) => NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat.fromMap((value as Map).cast<String, dynamic>()))),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings>(NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity>(NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : pulumi.Output.create<String>(map['marketplaceOfferId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: pulumi.Output.create<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile>(NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      strataCloudManagerTenantName: pulumi.Output.create<String>(map['strataCloudManagerTenantName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

