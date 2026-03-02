// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resources_instance.dart';
import 'packet_mirroring_mirrored_resources_subnetwork.dart';

class PacketMirroringMirroredResources {
  /// All the listed instances will be mirrored.  Specify at most 50.
  /// Structure is documented below.
  final pulumi.Input<List<PacketMirroringMirroredResourcesInstance>>? instances;
  /// All instances in one of these subnetworks will be mirrored.
  /// Structure is documented below.
  final pulumi.Input<List<PacketMirroringMirroredResourcesSubnetwork>>? subnetworks;
  /// All instances with these tags will be mirrored.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [PacketMirroringMirroredResources].
  /// [instances] All the listed instances will be mirrored.  Specify at most 50.
  /// [subnetworks] All instances in one of these subnetworks will be mirrored.
  /// [tags] All instances with these tags will be mirrored.
  PacketMirroringMirroredResources({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?pulumi.Input.mapOptionalInputValue<List<PacketMirroringMirroredResourcesInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<PacketMirroringMirroredResourcesInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetworks': ?pulumi.Input.mapOptionalInputValue<List<PacketMirroringMirroredResourcesSubnetwork>, List<Map<String, dynamic>>>(subnetworks, (value) => pulumi.Input.encodeList<PacketMirroringMirroredResourcesSubnetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory PacketMirroringMirroredResources.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResources(
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<PacketMirroringMirroredResourcesInstance>(map['instances'], (value) => PacketMirroringMirroredResourcesInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetworks: map['subnetworks'] == null ? null : (pulumi.Input.decodeList<PacketMirroringMirroredResourcesSubnetwork>(map['subnetworks'], (value) => PacketMirroringMirroredResourcesSubnetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

