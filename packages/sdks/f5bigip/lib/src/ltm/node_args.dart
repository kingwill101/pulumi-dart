// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_fqdn.dart';

/// {@template pulumi_ltm_node_node_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_ltm_node_node_args_doc}
class NodeArgs {
  /// IP or hostname of the node
  final pulumi.Input<String> address;
  /// Specifies the maximum number of connections allowed for the node or node address.
  final pulumi.Input<int>? connectionLimit;
  /// User-defined description give ltm_node
  final pulumi.Input<String>? description;
  /// Specifies the fixed ratio value used for a node during ratio load balancing.
  final pulumi.Input<int>? dynamicRatio;
  final pulumi.Input<NodeFqdn>? fqdn;
  /// specifies the name of the monitor or monitor rule that you want to associate with the node.
  final pulumi.Input<String>? monitor;
  /// Name of the node
  final pulumi.Input<String> name;
  /// Specifies the maximum number of connections per second allowed for a node or node address. The default value is 'disabled'.
  final pulumi.Input<String>? rateLimit;
  /// Sets the ratio number for the node.
  final pulumi.Input<int>? ratio;
  /// Enables or disables the node for new sessions. The default value is user-enabled.
  final pulumi.Input<String>? session;
  /// Default is "user-up" you can set to "user-down" if you want to disable
  ///
  /// > *NOTE* Below attributes needs to be configured under fqdn option.
  final pulumi.Input<String>? state;

  /// Creates a new [NodeArgs].
  /// [address] IP or hostname of the node
  /// [connectionLimit] Specifies the maximum number of connections allowed for the node or node address.
  /// [description] User-defined description give ltm_node
  /// [dynamicRatio] Specifies the fixed ratio value used for a node during ratio load balancing.
  /// [fqdn] Optional.
  /// [monitor] specifies the name of the monitor or monitor rule that you want to associate with the node.
  /// [name] Name of the node
  /// [rateLimit] Specifies the maximum number of connections per second allowed for a node or node address. The default value is 'disabled'.
  /// [ratio] Sets the ratio number for the node.
  /// [session] Enables or disables the node for new sessions. The default value is user-enabled.
  /// [state] Default is "user-up" you can set to "user-down" if you want to disable
  NodeArgs({
    required this.address,
    this.connectionLimit,
    this.description,
    this.dynamicRatio,
    this.fqdn,
    this.monitor,
    required this.name,
    this.rateLimit,
    this.ratio,
    this.session,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'connectionLimit': ?connectionLimit,
      'description': ?description,
      'dynamicRatio': ?dynamicRatio,
      'fqdn': ?pulumi.Input.mapOptionalInputValue<NodeFqdn, Map<String, dynamic>>(fqdn, (value) => value.toMap()),
      'monitor': ?monitor,
      'name': name,
      'rateLimit': ?rateLimit,
      'ratio': ?ratio,
      'session': ?session,
      'state': ?state,
    };
  }

  factory NodeArgs.fromMap(Map<String, dynamic> map) {
    return NodeArgs(
      address: (map['address'] as String).input(),
      connectionLimit: map['connectionLimit'] == null ? null : (map['connectionLimit'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dynamicRatio: map['dynamicRatio'] == null ? null : (map['dynamicRatio'] as int).input(),
      fqdn: map['fqdn'] == null ? null : (NodeFqdn.fromMap((map['fqdn'] as Map).cast<String, dynamic>())).input(),
      monitor: map['monitor'] == null ? null : (map['monitor'] as String).input(),
      name: (map['name'] as String).input(),
      rateLimit: map['rateLimit'] == null ? null : (map['rateLimit'] as String).input(),
      ratio: map['ratio'] == null ? null : (map['ratio'] as int).input(),
      session: map['session'] == null ? null : (map['session'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

