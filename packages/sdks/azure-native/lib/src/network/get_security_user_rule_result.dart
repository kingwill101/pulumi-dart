// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityUserRule.
class GetSecurityUserRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description for this rule.
  final String? description;
  /// The destination port ranges.
  final List<String>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<AddressPrefixItemResponse>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final String? direction;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Network protocol this rule applies to.
  final String? protocol;
  /// The provisioning state of the security configuration user rule resource.
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

  /// Creates a new [GetSecurityUserRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for this rule.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the security configuration user rule resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetSecurityUserRuleResult({
    this.azureApiVersion,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    this.direction,
    this.etag,
    this.id,
    this.name,
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
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?(() { final guardedValue = destinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'direction': ?direction,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSecurityUserRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityUserRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
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
