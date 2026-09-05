// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_ip_configuration.dart';
import 'get_firewall_management_ip_configuration.dart';
import 'get_firewall_virtual_hub.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when it is `true`.
  final bool? dnsProxyEnabled;
  /// The list of DNS servers that the Azure Firewall will direct DNS traffic to for name resolution.
  final List<String>? dnsServers;
  /// The ID of the Firewall Policy applied to the Azure Firewall.
  final String? firewallPolicyId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `ipConfiguration` block as defined below.
  final List<GetFirewallIpConfiguration>? ipConfigurations;
  /// The Azure location where the Azure Firewall exists.
  final String? location;
  /// A `managementIpConfiguration` block as defined below, which allows force-tunnelling of traffic to be performed by the firewall.
  final List<GetFirewallManagementIpConfiguration>? managementIpConfigurations;
  final String? name;
  final String? resourceGroupName;
  /// The SKU name of the Azure Firewall.
  final String? skuName;
  /// The SKU tier of the Azure Firewall.
  final String? skuTier;
  /// A mapping of tags assigned to the Azure Firewall.
  final Map<String, String>? tags;
  /// The operation mode for threat intelligence-based filtering.
  final String? threatIntelMode;
  /// A `virtualHub` block as defined below.
  final List<GetFirewallVirtualHub>? virtualHubs;
  /// A list of Availability Zones in which this Azure Firewall is located.
  final List<String>? zones;

  /// Creates a new [GetFirewallResult].
  /// [dnsProxyEnabled] Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when it is `true`.
  /// [dnsServers] The list of DNS servers that the Azure Firewall will direct DNS traffic to for name resolution.
  /// [firewallPolicyId] The ID of the Firewall Policy applied to the Azure Firewall.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] A `ipConfiguration` block as defined below.
  /// [location] The Azure location where the Azure Firewall exists.
  /// [managementIpConfigurations] A `managementIpConfiguration` block as defined below, which allows force-tunnelling of traffic to be performed by the firewall.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] The SKU name of the Azure Firewall.
  /// [skuTier] The SKU tier of the Azure Firewall.
  /// [tags] A mapping of tags assigned to the Azure Firewall.
  /// [threatIntelMode] The operation mode for threat intelligence-based filtering.
  /// [virtualHubs] A `virtualHub` block as defined below.
  /// [zones] A list of Availability Zones in which this Azure Firewall is located.
  const GetFirewallResult({
    this.dnsProxyEnabled,
    this.dnsServers,
    this.firewallPolicyId,
    this.id,
    this.ipConfigurations,
    this.location,
    this.managementIpConfigurations,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.skuTier,
    this.tags,
    this.threatIntelMode,
    this.virtualHubs,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsProxyEnabled': ?dnsProxyEnabled,
      'dnsServers': ?dnsServers,
      'firewallPolicyId': ?firewallPolicyId,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'managementIpConfigurations': ?(() { final guardedValue = managementIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallManagementIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'virtualHubs': ?(() { final guardedValue = virtualHubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallVirtualHub, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zones': ?zones,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      dnsProxyEnabled: (() { final guardedValue = map['dnsProxyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallIpConfiguration>(guardedValue, (value) => GetFirewallIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementIpConfigurations: (() { final guardedValue = map['managementIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallManagementIpConfiguration>(guardedValue, (value) => GetFirewallManagementIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      threatIntelMode: (() { final guardedValue = map['threatIntelMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHubs: (() { final guardedValue = map['virtualHubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallVirtualHub>(guardedValue, (value) => GetFirewallVirtualHub.fromMap((value as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
