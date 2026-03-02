// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_compute_beta_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_compute_beta_args_doc}
class GetNetworkComputeBetaArgs {
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkComputeBetaArgs].
  /// [network] Required.
  /// [project] Optional.
  GetNetworkComputeBetaArgs({
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'project': ?project,
    };
  }

  factory GetNetworkComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkComputeBetaArgs(
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

