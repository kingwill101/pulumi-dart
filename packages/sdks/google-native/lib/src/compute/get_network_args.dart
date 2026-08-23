// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_network_args_doc}
class GetNetworkArgs {
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkArgs].
  /// [network] Required.
  /// [project] Optional.
  const GetNetworkArgs({
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'project': ?project,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
