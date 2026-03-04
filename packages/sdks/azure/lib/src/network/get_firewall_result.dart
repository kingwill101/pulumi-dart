// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_ip_configuration.dart';
import 'get_firewall_management_ip_configuration.dart';
import 'get_firewall_virtual_hub.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when it is `true`.
  final bool dnsProxyEnabled;

  /// The list of DNS servers that the Azure Firewall will direct DNS traffic to for name resolution.
  final List<String> dnsServers;

  /// The ID of the Firewall Policy applied to the Azure Firewall.
  final String firewallPolicyId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `ip_configuration` block as defined below.
  final List<GetFirewallIpConfiguration> ipConfigurations;

  /// The Azure location where the Azure Firewall exists.
  final String location;

  /// A `management_ip_configuration` block as defined below, which allows force-tunnelling of traffic to be performed by the firewall.
  final List<GetFirewallManagementIpConfiguration> managementIpConfigurations;
  final String name;
  final String resourceGroupName;

  /// The SKU name of the Azure Firewall.
  final String skuName;

  /// The SKU tier of the Azure Firewall.
  final String skuTier;

  /// A mapping of tags assigned to the Azure Firewall.
  final Map<String, String> tags;

  /// The operation mode for threat intelligence-based filtering.
  final String threatIntelMode;

  /// A `virtual_hub` block as defined below.
  final List<GetFirewallVirtualHub> virtualHubs;

  /// A list of Availability Zones in which this Azure Firewall is located.
  final List<String> zones;

  /// Creates a new [GetFirewallResult].
  /// [dnsProxyEnabled] Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when it is `true`.
  /// [dnsServers] The list of DNS servers that the Azure Firewall will direct DNS traffic to for name resolution.
  /// [firewallPolicyId] The ID of the Firewall Policy applied to the Azure Firewall.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] A `ip_configuration` block as defined below.
  /// [location] The Azure location where the Azure Firewall exists.
  /// [managementIpConfigurations] A `management_ip_configuration` block as defined below, which allows force-tunnelling of traffic to be performed by the firewall.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The SKU name of the Azure Firewall.
  /// [skuTier] The SKU tier of the Azure Firewall.
  /// [tags] A mapping of tags assigned to the Azure Firewall.
  /// [threatIntelMode] The operation mode for threat intelligence-based filtering.
  /// [virtualHubs] A `virtual_hub` block as defined below.
  /// [zones] A list of Availability Zones in which this Azure Firewall is located.
  GetFirewallResult({
    required this.dnsProxyEnabled,
    required this.dnsServers,
    required this.firewallPolicyId,
    required this.id,
    required this.ipConfigurations,
    required this.location,
    required this.managementIpConfigurations,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.skuTier,
    required this.tags,
    required this.threatIntelMode,
    required this.virtualHubs,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsProxyEnabled': dnsProxyEnabled,
      'dnsServers': dnsServers,
      'firewallPolicyId': firewallPolicyId,
      'id': id,
      'ipConfigurations':
          pulumi.Input.encodeList<
            GetFirewallIpConfiguration,
            Map<String, dynamic>
          >(ipConfigurations, (value) => value.toMap()),
      'location': location,
      'managementIpConfigurations':
          pulumi.Input.encodeList<
            GetFirewallManagementIpConfiguration,
            Map<String, dynamic>
          >(managementIpConfigurations, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'skuTier': skuTier,
      'tags': tags,
      'threatIntelMode': threatIntelMode,
      'virtualHubs':
          pulumi.Input.encodeList<GetFirewallVirtualHub, Map<String, dynamic>>(
            virtualHubs,
            (value) => value.toMap(),
          ),
      'zones': zones,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      dnsProxyEnabled: map['dnsProxyEnabled'] as bool,
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      firewallPolicyId: map['firewallPolicyId'] as String,
      id: map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<GetFirewallIpConfiguration>(
        map['ipConfigurations']!,
        (value) => GetFirewallIpConfiguration.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      managementIpConfigurations:
          pulumi.Input.decodeList<GetFirewallManagementIpConfiguration>(
            map['managementIpConfigurations']!,
            (value) => GetFirewallManagementIpConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      skuTier: map['skuTier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      threatIntelMode: map['threatIntelMode'] as String,
      virtualHubs: pulumi.Input.decodeList<GetFirewallVirtualHub>(
        map['virtualHubs']!,
        (value) => GetFirewallVirtualHub.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
