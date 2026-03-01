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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> networkProfileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      networkProfileName = pulumi.Input.asInput<String>(networkProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'networkProfileName': networkProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkProfileArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      networkProfileName: pulumi.Output.create<String>(map['networkProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

