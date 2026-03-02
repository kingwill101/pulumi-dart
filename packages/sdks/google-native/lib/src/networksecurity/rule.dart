// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination.dart';
import 'source.dart';

/// Specification of rules.
class Rule {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final pulumi.Input<List<Destination>>? destinations;
  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final pulumi.Input<List<Source>>? sources;

  /// Creates a new [Rule].
  /// [destinations] Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  /// [sources] Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  Rule({
    this.destinations,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<Destination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<Destination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<Source>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<Source, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<Destination>(map['destinations'], (value) => Destination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<Source>(map['sources'], (value) => Source.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

