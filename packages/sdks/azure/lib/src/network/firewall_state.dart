// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_ip_configuration.dart';
import 'firewall_management_ip_configuration.dart';
import 'firewall_virtual_hub.dart';

/// Input properties used for looking up and filtering Firewall resources.
class FirewallState {
  /// Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when set to `true`. It will be set to `true` if `dnsServers` provided with a not empty list.
  final pulumi.Input<bool?>? dnsProxyEnabled;
  /// A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution.
  final pulumi.Input<List<String>?>? dnsServers;
  /// The ID of the Firewall Policy applied to this Firewall.
  final pulumi.Input<String?>? firewallPolicyId;
  /// An `ipConfiguration` block as documented below.
  final pulumi.Input<List<FirewallIpConfiguration>?>? ipConfigurations;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// A `managementIpConfiguration` block as documented below, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnetId` in an existing block forces a new resource to be created. Changing this forces a new resource to be created.
  final pulumi.Input<FirewallManagementIpConfiguration?>? managementIpConfiguration;
  /// Specifies the name of the Firewall. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918.
  final pulumi.Input<List<String>?>? privateIpRanges;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? skuName;
  /// SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`.
  final pulumi.Input<String?>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`.
  final pulumi.Input<String?>? threatIntelMode;
  /// A `virtualHub` block as documented below.
  final pulumi.Input<FirewallVirtualHub?>? virtualHub;
  /// Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created.
  ///
  /// &gt; **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [FirewallState].
  /// [dnsProxyEnabled] Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when set to `true`. It will be set to `true` if `dnsServers` provided with a not empty list.
  /// [dnsServers] A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution.
  /// [firewallPolicyId] The ID of the Firewall Policy applied to this Firewall.
  /// [ipConfigurations] An `ipConfiguration` block as documented below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managementIpConfiguration] A `managementIpConfiguration` block as documented below, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnetId` in an existing block forces a new resource to be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Firewall. Changing this forces a new resource to be created.
  /// [privateIpRanges] A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [skuName] SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created.
  /// [skuTier] SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threatIntelMode] The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`.
  /// [virtualHub] A `virtualHub` block as documented below.
  /// [zones] Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created.
  const FirewallState({
    this.dnsProxyEnabled,
    this.dnsServers,
    this.firewallPolicyId,
    this.ipConfigurations,
    this.location,
    this.managementIpConfiguration,
    this.name,
    this.privateIpRanges,
    this.resourceGroupName,
    this.skuName,
    this.skuTier,
    this.tags,
    this.threatIntelMode,
    this.virtualHub,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsProxyEnabled': ?dnsProxyEnabled,
      'dnsServers': ?dnsServers,
      'firewallPolicyId': ?firewallPolicyId,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FirewallIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<FirewallIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managementIpConfiguration': ?pulumi.Input.mapOptionalInputValue<FirewallManagementIpConfiguration, Map<String, dynamic>>(managementIpConfiguration, (value) => value.toMap()),
      'name': ?name,
      'privateIpRanges': ?privateIpRanges,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<FirewallVirtualHub, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory FirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallState(
      dnsProxyEnabled: (() { final guardedValue = map['dnsProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallIpConfiguration>(guardedValue, (value) => FirewallIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementIpConfiguration: (() { final guardedValue = map['managementIpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallManagementIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpRanges: (() { final guardedValue = map['privateIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threatIntelMode: (() { final guardedValue = map['threatIntelMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallVirtualHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
