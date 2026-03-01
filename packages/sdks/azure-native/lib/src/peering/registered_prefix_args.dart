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
  RegisteredPrefixArgs({
    required pulumi.Output<String> peeringName,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? registeredPrefixName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      peeringName = pulumi.Input.asInput<String>(peeringName),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      registeredPrefixName = pulumi.Input.asOptionalInput<String>(registeredPrefixName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      peeringName: pulumi.Output.create<String>(map['peeringName'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      registeredPrefixName: map['registeredPrefixName'] == null ? null : pulumi.Output.create<String>(map['registeredPrefixName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

