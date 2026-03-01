// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_public_ip_prefix_get_public_ip_prefix_args_doc}
/// Arguments for getPublicIpPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_get_public_ip_prefix_get_public_ip_prefix_args_doc}
class GetPublicIpPrefixArgs {
  /// Specifies the name of the public IP prefix.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIpPrefixArgs].
  /// [name] Specifies the name of the public IP prefix.
  /// [resourceGroupName] Specifies the name of the resource group.
  GetPublicIpPrefixArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIpPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpPrefixArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

