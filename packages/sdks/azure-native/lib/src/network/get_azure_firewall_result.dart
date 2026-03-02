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
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The firewallPolicy associated with this azure firewall.
  final SubResourceResponse? firewallPolicy;
  /// IP addresses associated with AzureFirewall.
  final HubIPAddressesResponse? hubIPAddresses;
  /// Resource ID.
  final String? id;
  /// IP configuration of the Azure Firewall resource.
  final List<AzureFirewallIPConfigurationResponse>? ipConfigurations;
  /// IpGroups associated with AzureFirewall.
  final List<AzureFirewallIpGroupsResponse> ipGroups;
  /// Resource location.
  final String? location;
  /// IP configuration of the Azure Firewall used for management traffic.
  final AzureFirewallIPConfigurationResponse? managementIpConfiguration;
  /// Resource name.
  final String name;
  /// Collection of NAT rule collections used by Azure Firewall.
  final List<AzureFirewallNatRuleCollectionResponse>? natRuleCollections;
  /// Collection of network rule collections used by Azure Firewall.
  final List<AzureFirewallNetworkRuleCollectionResponse>? networkRuleCollections;
  /// The provisioning state of the Azure firewall resource.
  final String provisioningState;
  /// The Azure Firewall Resource SKU.
  final AzureFirewallSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The operation mode for Threat Intelligence.
  final String? threatIntelMode;
  /// Resource type.
  final String type;
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
  GetAzureFirewallResult({
    this.additionalProperties,
    this.applicationRuleCollections,
    this.autoscaleConfiguration,
    required this.azureApiVersion,
    required this.etag,
    this.firewallPolicy,
    this.hubIPAddresses,
    this.id,
    this.ipConfigurations,
    required this.ipGroups,
    this.location,
    this.managementIpConfiguration,
    required this.name,
    this.natRuleCollections,
    this.networkRuleCollections,
    required this.provisioningState,
    this.sku,
    this.tags,
    this.threatIntelMode,
    required this.type,
    this.virtualHub,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'applicationRuleCollections': ?applicationRuleCollections == null ? null : pulumi.Input.encodeList<AzureFirewallApplicationRuleCollectionResponse, Map<String, dynamic>>(applicationRuleCollections!, (value) => value.toMap()),
      'autoscaleConfiguration': ?autoscaleConfiguration == null ? null : autoscaleConfiguration!.toMap(),
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'hubIPAddresses': ?hubIPAddresses == null ? null : hubIPAddresses!.toMap(),
      'id': ?id,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<AzureFirewallIPConfigurationResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'ipGroups': pulumi.Input.encodeList<AzureFirewallIpGroupsResponse, Map<String, dynamic>>(ipGroups, (value) => value.toMap()),
      'location': ?location,
      'managementIpConfiguration': ?managementIpConfiguration == null ? null : managementIpConfiguration!.toMap(),
      'name': name,
      'natRuleCollections': ?natRuleCollections == null ? null : pulumi.Input.encodeList<AzureFirewallNatRuleCollectionResponse, Map<String, dynamic>>(natRuleCollections!, (value) => value.toMap()),
      'networkRuleCollections': ?networkRuleCollections == null ? null : pulumi.Input.encodeList<AzureFirewallNetworkRuleCollectionResponse, Map<String, dynamic>>(networkRuleCollections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'type': type,
      'virtualHub': ?virtualHub == null ? null : virtualHub!.toMap(),
      'zones': ?zones,
    };
  }

  factory GetAzureFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetAzureFirewallResult(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties']! as Map).cast<String, String>(),
      applicationRuleCollections: map['applicationRuleCollections'] == null ? null : pulumi.Input.decodeList<AzureFirewallApplicationRuleCollectionResponse>(map['applicationRuleCollections']!, (value) => AzureFirewallApplicationRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : AzureFirewallAutoscaleConfigurationResponse.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      firewallPolicy: map['firewallPolicy'] == null ? null : SubResourceResponse.fromMap((map['firewallPolicy']! as Map).cast<String, dynamic>()),
      hubIPAddresses: map['hubIPAddresses'] == null ? null : HubIPAddressesResponse.fromMap((map['hubIPAddresses']! as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id']! as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<AzureFirewallIPConfigurationResponse>(map['ipConfigurations']!, (value) => AzureFirewallIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipGroups: pulumi.Input.decodeList<AzureFirewallIpGroupsResponse>(map['ipGroups'], (value) => AzureFirewallIpGroupsResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location']! as String,
      managementIpConfiguration: map['managementIpConfiguration'] == null ? null : AzureFirewallIPConfigurationResponse.fromMap((map['managementIpConfiguration']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      natRuleCollections: map['natRuleCollections'] == null ? null : pulumi.Input.decodeList<AzureFirewallNatRuleCollectionResponse>(map['natRuleCollections']!, (value) => AzureFirewallNatRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      networkRuleCollections: map['networkRuleCollections'] == null ? null : pulumi.Input.decodeList<AzureFirewallNetworkRuleCollectionResponse>(map['networkRuleCollections']!, (value) => AzureFirewallNetworkRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      sku: map['sku'] == null ? null : AzureFirewallSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      threatIntelMode: map['threatIntelMode'] == null ? null : map['threatIntelMode']! as String,
      type: map['type'] as String,
      virtualHub: map['virtualHub'] == null ? null : SubResourceResponse.fromMap((map['virtualHub']! as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

