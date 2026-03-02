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
    required this.customIpPrefixName,
    this.expand,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIpPrefixName': customIpPrefixName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomIPPrefixArgs(
      customIpPrefixName: (map['customIpPrefixName'] as String).input(),
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

