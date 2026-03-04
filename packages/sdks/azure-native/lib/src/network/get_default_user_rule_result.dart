// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDefaultUserRule.
class GetDefaultUserRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A description for this rule. Restricted to 140 chars.
  final String description;

  /// The destination port ranges.
  final List<String> destinationPortRanges;

  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<AddressPrefixItemResponse> destinations;

  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final String direction;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Default rule flag.
  final String? flag;

  /// Resource ID.
  final String id;

  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  final String kind;

  /// Resource name.
  final String name;

  /// Network protocol this rule applies to.
  final String protocol;

  /// The provisioning state of the security configuration user rule resource.
  final String provisioningState;

  /// The source port ranges.
  final List<String> sourcePortRanges;

  /// The CIDR or source IP ranges.
  final List<AddressPrefixItemResponse> sources;

  /// The system metadata related to this resource.
  final SystemDataResponse systemData;

  /// Resource type.
  final String type;

  /// Creates a new [GetDefaultUserRuleResult].
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
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the security configuration user rule resource.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetDefaultUserRuleResult({
    required this.azureApiVersion,
    required this.description,
    required this.destinationPortRanges,
    required this.destinations,
    required this.direction,
    required this.etag,
    this.flag,
    required this.id,
    required this.kind,
    required this.name,
    required this.protocol,
    required this.provisioningState,
    required this.sourcePortRanges,
    required this.sources,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': description,
      'destinationPortRanges': destinationPortRanges,
      'destinations':
          pulumi.Input.encodeList<
            AddressPrefixItemResponse,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'direction': direction,
      'etag': etag,
      'flag': ?flag,
      'id': id,
      'kind': kind,
      'name': name,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'sourcePortRanges': sourcePortRanges,
      'sources':
          pulumi.Input.encodeList<
            AddressPrefixItemResponse,
            Map<String, dynamic>
          >(sources, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDefaultUserRuleResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultUserRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] as String,
      destinationPortRanges: (map['destinationPortRanges'] as List)
          .cast<String>(),
      destinations: pulumi.Input.decodeList<AddressPrefixItemResponse>(
        map['destinations']!,
        (value) => AddressPrefixItemResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      direction: map['direction'] as String,
      etag: map['etag'] as String,
      flag: (() {
        final guardedValue = map['flag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      sourcePortRanges: (map['sourcePortRanges'] as List).cast<String>(),
      sources: pulumi.Input.decodeList<AddressPrefixItemResponse>(
        map['sources']!,
        (value) => AddressPrefixItemResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
