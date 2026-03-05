// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_prefix_args_doc}
/// The set of arguments for Prefix.
/// {@endtemplate}
/// {@macro pulumi_peering_prefix_args_doc}
class PrefixArgs {
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The peering service prefix key
  final pulumi.Input<String>? peeringServicePrefixKey;
  /// The prefix from which your traffic originates.
  final pulumi.Input<String>? prefix;
  /// The name of the prefix.
  final pulumi.Input<String>? prefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrefixArgs].
  /// [peeringServiceName] The name of the peering service.
  /// [peeringServicePrefixKey] The peering service prefix key
  /// [prefix] The prefix from which your traffic originates.
  /// [prefixName] The name of the prefix.
  /// [resourceGroupName] The name of the resource group.
  PrefixArgs({
    required this.peeringServiceName,
    this.peeringServicePrefixKey,
    this.prefix,
    this.prefixName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringServiceName': peeringServiceName,
      'peeringServicePrefixKey': ?peeringServicePrefixKey,
      'prefix': ?prefix,
      'prefixName': ?prefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrefixArgs.fromMap(Map<String, dynamic> map) {
    return PrefixArgs(
      peeringServiceName: pulumi.Input.fromValue(map['peeringServiceName'] as String),
      peeringServicePrefixKey: (() { final guardedValue = map['peeringServicePrefixKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixName: (() { final guardedValue = map['prefixName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

