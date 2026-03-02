// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info_compute_v1.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info_compute_v1.dart';

class PacketMirroringMirroredResourceInfoComputeV1 {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final pulumi.Input<List<PacketMirroringMirroredResourceInfoInstanceInfoComputeV1>>? instances;
  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final pulumi.Input<List<PacketMirroringMirroredResourceInfoSubnetInfoComputeV1>>? subnetworks;
  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [PacketMirroringMirroredResourceInfoComputeV1].
  /// [instances] A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  /// [subnetworks] A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  /// [tags] A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  PacketMirroringMirroredResourceInfoComputeV1({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?pulumi.Input.mapOptionalInputValue<List<PacketMirroringMirroredResourceInfoInstanceInfoComputeV1>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<PacketMirroringMirroredResourceInfoInstanceInfoComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetworks': ?pulumi.Input.mapOptionalInputValue<List<PacketMirroringMirroredResourceInfoSubnetInfoComputeV1>, List<Map<String, dynamic>>>(subnetworks, (value) => pulumi.Input.encodeList<PacketMirroringMirroredResourceInfoSubnetInfoComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory PacketMirroringMirroredResourceInfoComputeV1.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoComputeV1(
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<PacketMirroringMirroredResourceInfoInstanceInfoComputeV1>(map['instances'], (value) => PacketMirroringMirroredResourceInfoInstanceInfoComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetworks: map['subnetworks'] == null ? null : (pulumi.Input.decodeList<PacketMirroringMirroredResourceInfoSubnetInfoComputeV1>(map['subnetworks'], (value) => PacketMirroringMirroredResourceInfoSubnetInfoComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

