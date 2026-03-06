// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_registered_prefix_args_doc}
/// The set of arguments for RegisteredPrefix.
/// {@endtemplate}
/// {@macro pulumi_peering_registered_prefix_args_doc}
class RegisteredPrefixArgs {
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The customer's prefix from which traffic originates.
  final pulumi.Input<String>? prefix;
  /// The name of the registered prefix.
  final pulumi.Input<String>? registeredPrefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RegisteredPrefixArgs].
  /// [peeringName] The name of the peering.
  /// [prefix] The customer's prefix from which traffic originates.
  /// [registeredPrefixName] The name of the registered prefix.
  /// [resourceGroupName] The name of the resource group.
  const RegisteredPrefixArgs({
    required this.peeringName,
    this.prefix,
    this.registeredPrefixName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'prefix': ?prefix,
      'registeredPrefixName': ?registeredPrefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RegisteredPrefixArgs.fromMap(Map<String, dynamic> map) {
    return RegisteredPrefixArgs(
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registeredPrefixName: (() { final guardedValue = map['registeredPrefixName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

