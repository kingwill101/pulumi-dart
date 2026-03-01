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
    required pulumi.Output<String> packetMirroring,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      packetMirroring = pulumi.Input.asInput<String>(packetMirroring),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packetMirroring': packetMirroring,
      'project': ?project,
      'region': region,
    };
  }

  factory GetPacketMirroringComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeBetaArgs(
      packetMirroring: pulumi.Output.create<String>(map['packetMirroring'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

