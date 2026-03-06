// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info.dart';

class PacketMirroringMirroredResourceInfo {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final pulumi.Input<List<PacketMirroringMirroredResourceInfoInstanceInfo>>? instances;
  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final pulumi.Input<List<PacketMirroringMirroredResourceInfoSubnetInfo>>? subnetworks;
  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [PacketMirroringMirroredResourceInfo].
  /// [instances] A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  /// [subnetworks] A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  /// [tags] A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  const PacketMirroringMirroredResourceInfo({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?pulumi.Input.mapOptionalInputValue<List<PacketMirroringMirroredResourceInfoInstanceInfo>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<PacketMirroringMirroredResourceInfoInstanceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetworks': ?pulumi.Input.mapOptionalInputValue<List<PacketMirroringMirroredResourceInfoSubnetInfo>, List<Map<String, dynamic>>>(subnetworks, (value) => pulumi.Input.encodeList<PacketMirroringMirroredResourceInfoSubnetInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory PacketMirroringMirroredResourceInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfo(
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PacketMirroringMirroredResourceInfoInstanceInfo>(guardedValue, (value) => PacketMirroringMirroredResourceInfoInstanceInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PacketMirroringMirroredResourceInfoSubnetInfo>(guardedValue, (value) => PacketMirroringMirroredResourceInfoSubnetInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

