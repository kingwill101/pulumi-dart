// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'for_node.dart';
import 'for_zone.dart';

/// EndpointHints provides hints describing how an endpoint should be consumed.
class EndpointHints {
  /// forNodes indicates the node(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  final pulumi.Input<List<ForNode>>? forNodes;
  /// forZones indicates the zone(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  final pulumi.Input<List<ForZone>>? forZones;

  /// Creates a new [EndpointHints].
  /// [forNodes] forNodes indicates the node(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  /// [forZones] forZones indicates the zone(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  EndpointHints({
    this.forNodes,
    this.forZones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forNodes': ?pulumi.Input.mapOptionalInputValue<List<ForNode>, List<Map<String, dynamic>>>(forNodes, (value) => pulumi.Input.encodeList<ForNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forZones': ?pulumi.Input.mapOptionalInputValue<List<ForZone>, List<Map<String, dynamic>>>(forZones, (value) => pulumi.Input.encodeList<ForZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointHints.fromMap(Map<String, dynamic> map) {
    return EndpointHints(
      forNodes: map['forNodes'] == null ? null : (pulumi.Input.decodeList<ForNode>(map['forNodes']!, (value) => ForNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forZones: map['forZones'] == null ? null : (pulumi.Input.decodeList<ForZone>(map['forZones']!, (value) => ForZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

