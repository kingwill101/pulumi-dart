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
  const GetAuthorityArgs({
    required this.authorityName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityName': authorityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorityArgs(
      authorityName: pulumi.Input.fromValue(map['authorityName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

