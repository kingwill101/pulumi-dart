// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_networksecurity_v1beta1.dart';
import 'source_networksecurity_v1beta1.dart';

/// Specification of rules.
class RuleNetworksecurityV1beta1 {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final pulumi.Input<List<DestinationNetworksecurityV1beta1>>? destinations;
  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final pulumi.Input<List<SourceNetworksecurityV1beta1>>? sources;

  /// Creates a new [RuleNetworksecurityV1beta1].
  /// [destinations] Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  /// [sources] Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  RuleNetworksecurityV1beta1({
    this.destinations,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<DestinationNetworksecurityV1beta1>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<DestinationNetworksecurityV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<SourceNetworksecurityV1beta1>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<SourceNetworksecurityV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleNetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return RuleNetworksecurityV1beta1(
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<DestinationNetworksecurityV1beta1>(map['destinations']!, (value) => DestinationNetworksecurityV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<SourceNetworksecurityV1beta1>(map['sources']!, (value) => SourceNetworksecurityV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

