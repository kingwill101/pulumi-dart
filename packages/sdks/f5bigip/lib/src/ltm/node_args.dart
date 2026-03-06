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
  /// &gt; *NOTE* Below attributes needs to be configured under fqdn option.
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
  const NodeArgs({
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
      address: pulumi.Input.fromValue(map['address'] as String),
      connectionLimit: (() { final guardedValue = map['connectionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicRatio: (() { final guardedValue = map['dynamicRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeFqdn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      session: (() { final guardedValue = map['session']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

