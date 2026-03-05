// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// The name of the network.
  ///
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// A full or partial URL of the network profile to apply to this network.
  final pulumi.Input<String>? networkProfile;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkArgs].
  /// [name] The name of the network.
  /// [networkProfile] A full or partial URL of the network profile to apply to this network.
  /// [project] The ID of the project in which the resource belongs. If it
  GetNetworkArgs({
    required this.name,
    this.networkProfile,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkProfile': ?networkProfile,
      'project': ?project,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

