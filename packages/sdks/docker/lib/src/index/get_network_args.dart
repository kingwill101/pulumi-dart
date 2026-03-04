// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_index_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// The name of the Docker network.
  final pulumi.Input<String> name;

  /// Creates a new [GetNetworkArgs].
  /// [name] The name of the Docker network.
  GetNetworkArgs({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(name: pulumi.Input.fromValue(map['name'] as String));
  }
}
