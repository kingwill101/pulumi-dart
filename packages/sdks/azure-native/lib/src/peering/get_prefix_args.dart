// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_prefix_args_doc}
/// Arguments for getPrefix.
/// {@endtemplate}
/// {@macro pulumi_peering_get_prefix_args_doc}
class GetPrefixArgs {
  /// The properties to be expanded.
  final pulumi.Input<String>? expand;
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the prefix.
  final pulumi.Input<String> prefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrefixArgs].
  /// [expand] The properties to be expanded.
  /// [peeringServiceName] The name of the peering service.
  /// [prefixName] The name of the prefix.
  /// [resourceGroupName] The name of the resource group.
  GetPrefixArgs({
    this.expand,
    required this.peeringServiceName,
    required this.prefixName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'peeringServiceName': peeringServiceName,
      'prefixName': prefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringServiceName: pulumi.Input.fromValue(map['peeringServiceName'] as String),
      prefixName: pulumi.Input.fromValue(map['prefixName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

