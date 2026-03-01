// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_local_rulestack_destination_nat.dart';
import 'next_generation_firewall_virtual_network_local_rulestack_dns_settings.dart';
import 'next_generation_firewall_virtual_network_local_rulestack_network_profile.dart';

/// {@template pulumi_paloalto_next_generation_firewall_virtual_network_local_rulestack_next_generation_firewall_virtual_network_local_rulestack_args_doc}
/// The set of arguments for NextGenerationFirewallVirtualNetworkLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_paloalto_next_generation_firewall_virtual_network_local_rulestack_next_generation_firewall_virtual_network_local_rulestack_args_doc}
class NextGenerationFirewallVirtualNetworkLocalRulestackArgs {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat>>? destinationNats;
  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings>? dnsSettings;
  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile> networkProfile;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// > **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Local Rulestack which will be used to configure this Firewall Resource.
  final pulumi.Input<String> rulestackId;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Local Rulestack.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackArgs].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created.
  /// [rulestackId] The ID of the Local Rulestack which will be used to configure this Firewall Resource.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Local Rulestack.
  NextGenerationFirewallVirtualNetworkLocalRulestackArgs({
    pulumi.Output<List<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat>>? destinationNats,
    pulumi.Output<NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings>? dnsSettings,
    pulumi.Output<String>? marketplaceOfferId,
    pulumi.Output<String>? name,
    required pulumi.Output<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile> networkProfile,
    pulumi.Output<String>? planId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> rulestackId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      destinationNats = pulumi.Input.asOptionalInput<List<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat>>(destinationNats),
      dnsSettings = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings>(dnsSettings),
      marketplaceOfferId = pulumi.Input.asOptionalInput<String>(marketplaceOfferId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asInput<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile>(networkProfile),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rulestackId = pulumi.Input.asInput<String>(rulestackId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'planId': ?planId,
      'resourceGroupName': resourceGroupName,
      'rulestackId': rulestackId,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackArgs(
      destinationNats: map['destinationNats'] == null ? null : pulumi.Output.create<List<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat>>(pulumi.Input.decodeList<NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat>(map['destinationNats'], (value) => NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat.fromMap((value as Map).cast<String, dynamic>()))),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings>(NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : pulumi.Output.create<String>(map['marketplaceOfferId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: pulumi.Output.create<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile>(NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rulestackId: pulumi.Output.create<String>(map['rulestackId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

