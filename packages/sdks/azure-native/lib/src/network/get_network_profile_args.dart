// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_profile_args_doc}
/// Arguments for getNetworkProfile.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_profile_args_doc}
class GetNetworkProfileArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the public IP prefix.
  final pulumi.Input<String> networkProfileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkProfileArgs].
  /// [expand] Expands referenced resources.
  /// [networkProfileName] The name of the public IP prefix.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkProfileArgs({
    this.expand,
    required this.networkProfileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'networkProfileName': networkProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkProfileArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfileName: pulumi.Input.fromValue(map['networkProfileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

