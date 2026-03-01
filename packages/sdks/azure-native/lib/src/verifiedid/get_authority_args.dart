// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_verifiedid_get_authority_args_doc}
/// Arguments for getAuthority.
/// {@endtemplate}
/// {@macro pulumi_verifiedid_get_authority_args_doc}
class GetAuthorityArgs {
  /// The ID of the authority
  final pulumi.Input<String> authorityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAuthorityArgs].
  /// [authorityName] The ID of the authority
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAuthorityArgs({
    required pulumi.Output<String> authorityName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorityName = pulumi.Input.asInput<String>(authorityName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityName': authorityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorityArgs(
      authorityName: pulumi.Output.create<String>(map['authorityName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

