// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworksNetwork {
  final pulumi.Input<bool> deleteProtection;
  /// Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  final pulumi.Input<bool> exposeRoutesToVswitch;
  final pulumi.Input<int> id;
  final pulumi.Input<String> ipRange;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> name;

  /// Creates a new [GetNetworksNetwork].
  /// [deleteProtection] Required.
  /// [exposeRoutesToVswitch] Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  /// [id] Required.
  /// [ipRange] Required.
  /// [labels] Required.
  /// [name] Required.
  GetNetworksNetwork({
    required this.deleteProtection,
    required this.exposeRoutesToVswitch,
    required this.id,
    required this.ipRange,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'exposeRoutesToVswitch': exposeRoutesToVswitch,
      'id': id,
      'ipRange': ipRange,
      'labels': labels,
      'name': name,
    };
  }

  factory GetNetworksNetwork.fromMap(Map<String, dynamic> map) {
    return GetNetworksNetwork(
      deleteProtection: (map['deleteProtection'] as bool).input(),
      exposeRoutesToVswitch: (map['exposeRoutesToVswitch'] as bool).input(),
      id: (map['id'] as int).input(),
      ipRange: (map['ipRange'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

