// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nwrule_set_ip_rules_response.dart';
import 'nwrule_set_virtual_network_rules_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespaceNetworkRuleSet.
class GetNamespaceNetworkRuleSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Default Action for Network Rule Set
  final String? defaultAction;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// List of IpRules
  final List<NWRuleSetIpRulesResponse>? ipRules;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final String? publicNetworkAccess;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Value that indicates whether Trusted Service Access is Enabled or not.
  final bool? trustedServiceAccessEnabled;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;
  /// List VirtualNetwork Rules
  final List<NWRuleSetVirtualNetworkRulesResponse>? virtualNetworkRules;

  /// Creates a new [GetNamespaceNetworkRuleSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultAction] Default Action for Network Rule Set
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ipRules] List of IpRules
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [systemData] The system meta data relating to this resource.
  /// [trustedServiceAccessEnabled] Value that indicates whether Trusted Service Access is Enabled or not.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  /// [virtualNetworkRules] List VirtualNetwork Rules
  GetNamespaceNetworkRuleSetResult({
    required this.azureApiVersion,
    this.defaultAction,
    required this.id,
    this.ipRules,
    required this.location,
    required this.name,
    this.publicNetworkAccess,
    required this.systemData,
    this.trustedServiceAccessEnabled,
    required this.type,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultAction': ?defaultAction,
      'id': id,
      'ipRules': ?(() { final guardedValue = ipRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<NWRuleSetIpRulesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': location,
      'name': name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': systemData.toMap(),
      'trustedServiceAccessEnabled': ?trustedServiceAccessEnabled,
      'type': type,
      'virtualNetworkRules': ?(() { final guardedValue = virtualNetworkRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<NWRuleSetVirtualNetworkRulesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetNamespaceNetworkRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceNetworkRuleSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NWRuleSetIpRulesResponse>(guardedValue, (value) => NWRuleSetIpRulesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      trustedServiceAccessEnabled: (() { final guardedValue = map['trustedServiceAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      type: map['type'] as String,
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NWRuleSetVirtualNetworkRulesResponse>(guardedValue, (value) => NWRuleSetVirtualNetworkRulesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

