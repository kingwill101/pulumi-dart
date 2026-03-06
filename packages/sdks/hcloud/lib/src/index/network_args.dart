// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_index_network_network_args_doc}
class NetworkArgs {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  final pulumi.Input<bool>? exposeRoutesToVswitch;
  /// IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918.
  final pulumi.Input<String> ipRange;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Network to create (must be unique per project).
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkArgs].
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [exposeRoutesToVswitch] Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  /// [ipRange] IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Network to create (must be unique per project).
  const NetworkArgs({
    this.deleteProtection,
    this.exposeRoutesToVswitch,
    required this.ipRange,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'exposeRoutesToVswitch': ?exposeRoutesToVswitch,
      'ipRange': ipRange,
      'labels': ?labels,
      'name': ?name,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exposeRoutesToVswitch: (() { final guardedValue = map['exposeRoutesToVswitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

