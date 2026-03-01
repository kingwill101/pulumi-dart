// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'for_node_patch.dart';
import 'for_zone_patch.dart';

/// EndpointHints provides hints describing how an endpoint should be consumed.
class EndpointHintsPatch {
  /// forNodes indicates the node(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  final List<ForNodePatch>? forNodes;
  /// forZones indicates the zone(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  final List<ForZonePatch>? forZones;

  /// Creates a new [EndpointHintsPatch].
  /// [forNodes] forNodes indicates the node(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  /// [forZones] forZones indicates the zone(s) this endpoint should be consumed by when using topology aware routing. May contain a maximum of 8 entries.
  EndpointHintsPatch({
    this.forNodes,
    this.forZones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forNodes': ?forNodes == null ? null : pulumi.Input.encodeList<ForNodePatch, Map<String, dynamic>>(forNodes!, (value) => value.toMap()),
      'forZones': ?forZones == null ? null : pulumi.Input.encodeList<ForZonePatch, Map<String, dynamic>>(forZones!, (value) => value.toMap()),
    };
  }

  factory EndpointHintsPatch.fromMap(Map<String, dynamic> map) {
    return EndpointHintsPatch(
      forNodes: map['forNodes'] == null ? null : pulumi.Input.decodeList<ForNodePatch>(map['forNodes'], (value) => ForNodePatch.fromMap((value as Map).cast<String, dynamic>())),
      forZones: map['forZones'] == null ? null : pulumi.Input.decodeList<ForZonePatch>(map['forZones'], (value) => ForZonePatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

