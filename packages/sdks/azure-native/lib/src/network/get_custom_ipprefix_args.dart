// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_custom_ipprefix_args_doc}
/// Arguments for getCustomIPPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_get_custom_ipprefix_args_doc}
class GetCustomIPPrefixArgs {
  /// The name of the custom IP prefix.
  final pulumi.Input<String> customIpPrefixName;
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCustomIPPrefixArgs].
  /// [customIpPrefixName] The name of the custom IP prefix.
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  GetCustomIPPrefixArgs({
    required pulumi.Output<String> customIpPrefixName,
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
  }) :
      customIpPrefixName = pulumi.Input.asInput<String>(customIpPrefixName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIpPrefixName': customIpPrefixName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomIPPrefixArgs(
      customIpPrefixName: pulumi.Output.create<String>(map['customIpPrefixName'] as String),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

