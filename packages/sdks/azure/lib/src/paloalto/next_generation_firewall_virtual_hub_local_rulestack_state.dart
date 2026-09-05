// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_local_rulestack_destination_nat.dart';
import 'next_generation_firewall_virtual_hub_local_rulestack_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_local_rulestack_network_profile.dart';

/// Input properties used for looking up and filtering NextGenerationFirewallVirtualHubLocalRulestack resources.
class NextGenerationFirewallVirtualHubLocalRulestackState {
  /// One or more `destinationNat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualHubLocalRulestackDestinationNat>?>? destinationNats;
  /// A `dnsSettings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubLocalRulestackDnsSettings?>? dnsSettings;
  /// The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall VHub Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  final pulumi.Input<String?>? name;
  /// A `networkProfile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile?>? networkProfile;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// &gt; **Note:** The former `planId` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `planId` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String?>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The ID of the Local Rulestack to be used for this Next Generation Firewall.
  final pulumi.Input<String?>? rulestackId;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Local Rulestack.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackState].
  /// [destinationNats] One or more `destinationNat` blocks as defined below.
  /// [dnsSettings] A `dnsSettings` block as defined below.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall VHub Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  /// [networkProfile] A `networkProfile` block as defined below.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  /// [rulestackId] The ID of the Local Rulestack to be used for this Next Generation Firewall.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Local Rulestack.
  const NextGenerationFirewallVirtualHubLocalRulestackState({
    this.destinationNats,
    this.dnsSettings,
    this.marketplaceOfferId,
    this.name,
    this.networkProfile,
    this.planId,
    this.resourceGroupName,
    this.rulestackId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualHubLocalRulestackDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualHubLocalRulestackDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubLocalRulestackDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'planId': ?planId,
      'resourceGroupName': ?resourceGroupName,
      'rulestackId': ?rulestackId,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualHubLocalRulestackState.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubLocalRulestackState(
      destinationNats: (() { final guardedValue = map['destinationNats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NextGenerationFirewallVirtualHubLocalRulestackDestinationNat>(guardedValue, (value) => NextGenerationFirewallVirtualHubLocalRulestackDestinationNat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubLocalRulestackDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      marketplaceOfferId: (() { final guardedValue = map['marketplaceOfferId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualHubLocalRulestackNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulestackId: (() { final guardedValue = map['rulestackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
