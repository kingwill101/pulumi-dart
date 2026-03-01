// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_network_compute_v1_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_network_compute_v1_args_doc}
class GetNetworkComputeV1Args {
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkComputeV1Args].
  /// [network] Required.
  /// [project] Optional.
  GetNetworkComputeV1Args({
    required pulumi.Output<String> network,
    pulumi.Output<String>? project,
  }) :
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'project': ?project,
    };
  }

  factory GetNetworkComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkComputeV1Args(
      network: pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

