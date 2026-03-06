// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_fqdn.dart';

/// {@template pulumi_ltm_get_node_get_node_args_doc}
/// Arguments for getNode.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_node_get_node_args_doc}
class GetNodeArgs {
  /// The address of the node.
  final pulumi.Input<String>? address;
  /// User defined description of the node.
  final pulumi.Input<String>? description;
  final pulumi.Input<GetNodeFqdn>? fqdn;
  /// Full path of the node (partition and name)
  final pulumi.Input<String>? fullPath;
  /// Name of the node.
  final pulumi.Input<String> name;
  /// partition of the node.
  final pulumi.Input<String> partition;

  /// Creates a new [GetNodeArgs].
  /// [address] The address of the node.
  /// [description] User defined description of the node.
  /// [fqdn] Optional.
  /// [fullPath] Full path of the node (partition and name)
  /// [name] Name of the node.
  /// [partition] partition of the node.
  const GetNodeArgs({
    this.address,
    this.description,
    this.fqdn,
    this.fullPath,
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'description': ?description,
      'fqdn': ?pulumi.Input.mapOptionalInputValue<GetNodeFqdn, Map<String, dynamic>>(fqdn, (value) => value.toMap()),
      'fullPath': ?fullPath,
      'name': name,
      'partition': partition,
    };
  }

  factory GetNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetNodeFqdn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fullPath: (() { final guardedValue = map['fullPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: pulumi.Input.fromValue(map['partition'] as String),
    );
  }
}

