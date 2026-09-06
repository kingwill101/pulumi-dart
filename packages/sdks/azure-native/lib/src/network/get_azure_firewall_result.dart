// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_collection_response.dart';
import 'azure_firewall_autoscale_configuration_response.dart';
import 'azure_firewall_ip_groups_response.dart';
import 'azure_firewall_ipconfiguration_response.dart';
import 'azure_firewall_nat_rule_collection_response.dart';
import 'azure_firewall_network_rule_collection_response.dart';
import 'azure_firewall_sku_response.dart';
import 'hub_ipaddresses_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getAzureFirewall.
class GetAzureFirewallResult {
  /// The additional properties used to further config this azure firewall.
  final Map<String, String>? additionalProperties;
  /// Collection of application rule collections used by Azure Firewall.
  final List<AzureFirewallApplicationRuleCollectionResponse>? applicationRuleCollections;
  /// Properties to provide a custom autoscale configuration to this azure firewall.
  final AzureFirewallAutoscaleConfigurationResponse? autoscaleConfiguration;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The firewallPolicy associated with this azure firewall.
  final SubResourceResponse? firewallPolicy;
  /// IP addresses associated with AzureFirewall.
  final HubIPAddressesResponse? hubIPAddresses;
  /// Resource ID.
  final String? id;
  /// IP configuration of the Azure Firewall resource.
  final List<AzureFirewallIPConfigurationResponse>? ipConfigurations;
  /// IpGroups associated with AzureFirewall.
  final List<AzureFirewallIpGroupsResponse>? ipGroups;
  /// Resource location.
  final String? location;
  /// IP configuration of the Azure Firewall used for management traffic.
  final AzureFirewallIPConfigurationResponse? managementIpConfiguration;
  /// Resource name.
  final String? name;
  /// Collection of NAT rule collections used by Azure Firewall.
  final List<AzureFirewallNatRuleCollectionResponse>? natRuleCollections;
  /// Collection of network rule collections used by Azure Firewall.
  final List<AzureFirewallNetworkRuleCollectionResponse>? networkRuleCollections;
  /// The provisioning state of the Azure firewall resource.
  final String? provisioningState;
  /// The Azure Firewall Resource SKU.
  final AzureFirewallSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The operation mode for Threat Intelligence.
  final String? threatIntelMode;
  /// Resource type.
  final String? type;
  /// The virtualHub to which the firewall belongs.
  final SubResourceResponse? virtualHub;
  /// A list of availability zones denoting where the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetAzureFirewallResult].
  /// [additionalProperties] The additional properties used to further config this azure firewall.
  /// [applicationRuleCollections] Collection of application rule collections used by Azure Firewall.
  /// [autoscaleConfiguration] Properties to provide a custom autoscale configuration to this azure firewall.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [firewallPolicy] The firewallPolicy associated with this azure firewall.
  /// [hubIPAddresses] IP addresses associated with AzureFirewall.
  /// [id] Resource ID.
  /// [ipConfigurations] IP configuration of the Azure Firewall resource.
  /// [ipGroups] IpGroups associated with AzureFirewall.
  /// [location] Resource location.
  /// [managementIpConfiguration] IP configuration of the Azure Firewall used for management traffic.
  /// [name] Resource name.
  /// [natRuleCollections] Collection of NAT rule collections used by Azure Firewall.
  /// [networkRuleCollections] Collection of network rule collections used by Azure Firewall.
  /// [provisioningState] The provisioning state of the Azure firewall resource.
  /// [sku] The Azure Firewall Resource SKU.
  /// [tags] Resource tags.
  /// [threatIntelMode] The operation mode for Threat Intelligence.
  /// [type] Resource type.
  /// [virtualHub] The virtualHub to which the firewall belongs.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  const GetAzureFirewallResult({
    this.additionalProperties,
    this.applicationRuleCollections,
    this.autoscaleConfiguration,
    this.azureApiVersion,
    this.etag,
    this.firewallPolicy,
    this.hubIPAddresses,
    this.id,
    this.ipConfigurations,
    this.ipGroups,
    this.location,
    this.managementIpConfiguration,
    this.name,
    this.natRuleCollections,
    this.networkRuleCollections,
    this.provisioningState,
    this.sku,
    this.tags,
    this.threatIntelMode,
    this.type,
    this.virtualHub,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'applicationRuleCollections': ?(() { final guardedValue = applicationRuleCollections; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureFirewallApplicationRuleCollectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoscaleConfiguration': ?autoscaleConfiguration?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'firewallPolicy': ?firewallPolicy?.toMap(),
      'hubIPAddresses': ?hubIPAddresses?.toMap(),
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureFirewallIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipGroups': ?(() { final guardedValue = ipGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureFirewallIpGroupsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'managementIpConfiguration': ?managementIpConfiguration?.toMap(),
      'name': ?name,
      'natRuleCollections': ?(() { final guardedValue = natRuleCollections; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureFirewallNatRuleCollectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkRuleCollections': ?(() { final guardedValue = networkRuleCollections; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureFirewallNetworkRuleCollectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'type': ?type,
      'virtualHub': ?virtualHub?.toMap(),
      'zones': ?zones,
    };
  }

  factory GetAzureFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetAzureFirewallResult(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      applicationRuleCollections: (() { final guardedValue = map['applicationRuleCollections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFirewallApplicationRuleCollectionResponse>(guardedValue, (value) => AzureFirewallApplicationRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoscaleConfiguration: (() { final guardedValue = map['autoscaleConfiguration']; if (guardedValue == null) return null; return AzureFirewallAutoscaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hubIPAddresses: (() { final guardedValue = map['hubIPAddresses']; if (guardedValue == null) return null; return HubIPAddressesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFirewallIPConfigurationResponse>(guardedValue, (value) => AzureFirewallIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipGroups: (() { final guardedValue = map['ipGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFirewallIpGroupsResponse>(guardedValue, (value) => AzureFirewallIpGroupsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementIpConfiguration: (() { final guardedValue = map['managementIpConfiguration']; if (guardedValue == null) return null; return AzureFirewallIPConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natRuleCollections: (() { final guardedValue = map['natRuleCollections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFirewallNatRuleCollectionResponse>(guardedValue, (value) => AzureFirewallNatRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkRuleCollections: (() { final guardedValue = map['networkRuleCollections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFirewallNetworkRuleCollectionResponse>(guardedValue, (value) => AzureFirewallNetworkRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AzureFirewallSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      threatIntelMode: (() { final guardedValue = map['threatIntelMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
