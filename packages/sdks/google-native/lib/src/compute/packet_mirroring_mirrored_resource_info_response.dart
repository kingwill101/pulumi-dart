// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info_response.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info_response.dart';

class PacketMirroringMirroredResourceInfoResponse {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final pulumi.Input<
    List<PacketMirroringMirroredResourceInfoInstanceInfoResponse>
  >
  instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final pulumi.Input<
    List<PacketMirroringMirroredResourceInfoSubnetInfoResponse>
  >
  subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [PacketMirroringMirroredResourceInfoResponse].
  /// [instances] A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  /// [subnetworks] A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  /// [tags] A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  PacketMirroringMirroredResourceInfoResponse({
    required this.instances,
    required this.subnetworks,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances':
          pulumi.Input.mapInputValue<
            List<PacketMirroringMirroredResourceInfoInstanceInfoResponse>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  PacketMirroringMirroredResourceInfoInstanceInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'subnetworks':
          pulumi.Input.mapInputValue<
            List<PacketMirroringMirroredResourceInfoSubnetInfoResponse>,
            List<Map<String, dynamic>>
          >(
            subnetworks,
            (value) =>
                pulumi.Input.encodeList<
                  PacketMirroringMirroredResourceInfoSubnetInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': tags,
    };
  }

  factory PacketMirroringMirroredResourceInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PacketMirroringMirroredResourceInfoResponse(
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          PacketMirroringMirroredResourceInfoInstanceInfoResponse
        >(
          map['instances']!,
          (value) =>
              PacketMirroringMirroredResourceInfoInstanceInfoResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      subnetworks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          PacketMirroringMirroredResourceInfoSubnetInfoResponse
        >(
          map['subnetworks']!,
          (value) =>
              PacketMirroringMirroredResourceInfoSubnetInfoResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}
