// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_public_ipprefix_args_doc}
/// Arguments for getPublicIPPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_get_public_ipprefix_args_doc}
class GetPublicIPPrefixArgs {
  /// Expands referenced resources.
  final pulumi.Input<String?>? expand;
  /// The name of the public IP prefix.
  final pulumi.Input<String> publicIpPrefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIPPrefixArgs].
  /// [expand] Expands referenced resources.
  /// [publicIpPrefixName] The name of the public IP prefix.
  /// [resourceGroupName] The name of the resource group.
  const GetPublicIPPrefixArgs({
    this.expand,
    required this.publicIpPrefixName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'publicIpPrefixName': publicIpPrefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIPPrefixArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpPrefixName: pulumi.Input.fromValue(map['publicIpPrefixName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
