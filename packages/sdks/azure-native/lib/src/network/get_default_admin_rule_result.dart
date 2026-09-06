// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDefaultAdminRule.
class GetDefaultAdminRuleResult {
  /// Indicates the access allowed for this particular rule
  final String? access;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description for this rule. Restricted to 140 chars.
  final String? description;
  /// The destination port ranges.
  final List<String>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<AddressPrefixItemResponse>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final String? direction;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Default rule flag.
  final String? flag;
  /// Resource ID.
  final String? id;
  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  final String? kind;
  /// Resource name.
  final String? name;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final int? priority;
  /// Network protocol this rule applies to.
  final String? protocol;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Unique identifier for this resource.
  final String? resourceGuid;
  /// The source port ranges.
  final List<String>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final List<AddressPrefixItemResponse>? sources;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetDefaultAdminRuleResult].
  /// [access] Indicates the access allowed for this particular rule
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [flag] Default rule flag.
  /// [id] Resource ID.
  /// [kind] Whether the rule is custom or default.
  /// [name] Resource name.
  /// [priority] The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetDefaultAdminRuleResult({
    this.access,
    this.azureApiVersion,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    this.direction,
    this.etag,
    this.flag,
    this.id,
    this.kind,
    this.name,
    this.priority,
    this.protocol,
    this.provisioningState,
    this.resourceGuid,
    this.sourcePortRanges,
    this.sources,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?(() { final guardedValue = destinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'direction': ?direction,
      'etag': ?etag,
      'flag': ?flag,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'priority': ?priority,
      'protocol': ?protocol,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDefaultAdminRuleResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultAdminRuleResult(
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
