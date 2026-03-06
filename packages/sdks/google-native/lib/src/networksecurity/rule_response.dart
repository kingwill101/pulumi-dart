// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';
import 'source_response.dart';

/// Specification of rules.
class RuleResponse {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final pulumi.Input<List<DestinationResponse>> destinations;
  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final pulumi.Input<List<SourceResponse>> sources;

  /// Creates a new [RuleResponse].
  /// [destinations] Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  /// [sources] Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  const RuleResponse({
    required this.destinations,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<DestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<DestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': pulumi.Input.mapInputValue<List<SourceResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<SourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleResponse.fromMap(Map<String, dynamic> map) {
    return RuleResponse(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<DestinationResponse>(map['destinations']!, (value) => DestinationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<SourceResponse>(map['sources']!, (value) => SourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

