// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_packet_mirroring_compute_beta_args_doc}
/// Arguments for getPacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_packet_mirroring_compute_beta_args_doc}
class GetPacketMirroringComputeBetaArgs {
  final pulumi.Input<String> packetMirroring;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetPacketMirroringComputeBetaArgs].
  /// [packetMirroring] Required.
  /// [project] Optional.
  /// [region] Required.
  GetPacketMirroringComputeBetaArgs({
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

  factory GetPacketMirroringComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeBetaArgs(
      packetMirroring: (map['packetMirroring'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

