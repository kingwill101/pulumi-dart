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
  GetPrivateLinkArgs({
    required pulumi.Output<String> privateLinkName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      privateLinkName = pulumi.Input.asInput<String>(privateLinkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkName': privateLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkArgs(
      privateLinkName: pulumi.Output.create<String>(map['privateLinkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

