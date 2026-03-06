// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_private_link_args_doc}
/// Arguments for getPrivateLink.
/// {@endtemplate}
/// {@macro pulumi_security_get_private_link_args_doc}
class GetPrivateLinkArgs {
  /// The name of the private link resource. Must be unique within the resource group and follow Azure naming conventions.
  final pulumi.Input<String> privateLinkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateLinkArgs].
  /// [privateLinkName] The name of the private link resource. Must be unique within the resource group and follow Azure naming conventions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPrivateLinkArgs({
    required this.privateLinkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkName': privateLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkArgs(
      privateLinkName: pulumi.Input.fromValue(map['privateLinkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

