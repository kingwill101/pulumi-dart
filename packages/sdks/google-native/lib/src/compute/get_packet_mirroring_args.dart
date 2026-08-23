// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_packet_mirroring_args_doc}
/// Arguments for getPacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_packet_mirroring_args_doc}
class GetPacketMirroringArgs {
  final pulumi.Input<String> packetMirroring;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetPacketMirroringArgs].
  /// [packetMirroring] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetPacketMirroringArgs({
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

  factory GetPacketMirroringArgs.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringArgs(
      packetMirroring: pulumi.Input.fromValue(map['packetMirroring'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
