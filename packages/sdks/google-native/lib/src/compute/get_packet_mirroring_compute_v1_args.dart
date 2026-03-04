// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_packet_mirroring_compute_v1_args_doc}
/// Arguments for getPacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_packet_mirroring_compute_v1_args_doc}
class GetPacketMirroringComputeV1Args {
  final pulumi.Input<String> packetMirroring;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetPacketMirroringComputeV1Args].
  /// [packetMirroring] Required.
  /// [project] Optional.
  /// [region] Required.
  GetPacketMirroringComputeV1Args({
    required this.packetMirroring,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packetMirroring': packetMirroring,
      'project': ?project,
      'region': region,
    };
  }

  factory GetPacketMirroringComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeV1Args(
      packetMirroring: pulumi.Input.fromValue(map['packetMirroring'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
