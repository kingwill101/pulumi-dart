// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityUserRule.
class GetSecurityUserRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description for this rule.
  final String? description;
  /// The destination port ranges.
  final List<String>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<AddressPrefixItemResponse>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final String direction;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Network protocol this rule applies to.
  final String protocol;
  /// The provisioning state of the security configuration user rule resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The source port ranges.
  final List<String>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final List<AddressPrefixItemResponse>? sources;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

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
  GetSecurityUserRuleResult({
    required this.azureApiVersion,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    required this.direction,
    required this.etag,
    required this.id,
    required this.name,
    required this.protocol,
    required this.provisioningState,
    required this.resourceGuid,
    this.sourcePortRanges,
    this.sources,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'direction': direction,
      'etag': etag,
      'id': id,
      'name': name,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?sources == null ? null : pulumi.Input.encodeList<AddressPrefixItemResponse, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSecurityUserRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityUserRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges']! as List).cast<String>(),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<AddressPrefixItemResponse>(map['destinations']!, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      direction: map['direction'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges']! as List).cast<String>(),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<AddressPrefixItemResponse>(map['sources']!, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

