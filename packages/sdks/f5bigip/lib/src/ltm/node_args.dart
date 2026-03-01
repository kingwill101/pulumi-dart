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
    required pulumi.Output<String> address,
    pulumi.Output<int>? connectionLimit,
    pulumi.Output<String>? description,
    pulumi.Output<int>? dynamicRatio,
    pulumi.Output<NodeFqdn>? fqdn,
    pulumi.Output<String>? monitor,
    required pulumi.Output<String> name,
    pulumi.Output<String>? rateLimit,
    pulumi.Output<int>? ratio,
    pulumi.Output<String>? session,
    pulumi.Output<String>? state,
  }) :
      address = pulumi.Input.asInput<String>(address),
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      description = pulumi.Input.asOptionalInput<String>(description),
      dynamicRatio = pulumi.Input.asOptionalInput<int>(dynamicRatio),
      fqdn = pulumi.Input.asOptionalInput<NodeFqdn>(fqdn),
      monitor = pulumi.Input.asOptionalInput<String>(monitor),
      name = pulumi.Input.asInput<String>(name),
      rateLimit = pulumi.Input.asOptionalInput<String>(rateLimit),
      ratio = pulumi.Input.asOptionalInput<int>(ratio),
      session = pulumi.Input.asOptionalInput<String>(session),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      address: pulumi.Output.create<String>(map['address'] as String),
      connectionLimit: map['connectionLimit'] == null ? null : pulumi.Output.create<int>(map['connectionLimit'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dynamicRatio: map['dynamicRatio'] == null ? null : pulumi.Output.create<int>(map['dynamicRatio'] as int),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<NodeFqdn>(NodeFqdn.fromMap((map['fqdn'] as Map).cast<String, dynamic>())),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<String>(map['monitor'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      rateLimit: map['rateLimit'] == null ? null : pulumi.Output.create<String>(map['rateLimit'] as String),
      ratio: map['ratio'] == null ? null : pulumi.Output.create<int>(map['ratio'] as int),
      session: map['session'] == null ? null : pulumi.Output.create<String>(map['session'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

