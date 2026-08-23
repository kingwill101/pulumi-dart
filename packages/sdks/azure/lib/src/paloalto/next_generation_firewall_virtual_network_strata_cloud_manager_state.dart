// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_strata_cloud_manager_destination_nat.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_dns_settings.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_identity.dart';
import 'next_generation_firewall_virtual_network_strata_cloud_manager_network_profile.dart';

/// Input properties used for looking up and filtering NextGenerationFirewallVirtualNetworkStrataCloudManager resources.
class NextGenerationFirewallVirtualNetworkStrataCloudManagerState {
  /// One or more `destinationNat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>>? destinationNats;
  /// A `dnsSettings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings>? dnsSettings;
  /// An `identity` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity>? identity;
  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  final pulumi.Input<String>? location;
  /// The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  final pulumi.Input<String>? name;
  /// A `networkProfile` block as defined below.
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
  /// [destinationNats] One or more `destinationNat` blocks as defined below.
  /// [dnsSettings] A `dnsSettings` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  /// [networkProfile] A `networkProfile` block as defined below.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager to be created.
  /// [strataCloudManagerTenantName] Strata Cloud Manager name which is intended to manage the policy for this firewall.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Strata Cloud Manager.
  const NextGenerationFirewallVirtualNetworkStrataCloudManagerState({
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
      destinationNats: (() { final guardedValue = map['destinationNats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat>(guardedValue, (value) => NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceOfferId: (() { final guardedValue = map['marketplaceOfferId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strataCloudManagerTenantName: (() { final guardedValue = map['strataCloudManagerTenantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
