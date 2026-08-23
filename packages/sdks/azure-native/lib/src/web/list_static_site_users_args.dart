// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_users_args_doc}
/// Arguments for listStaticSiteUsers.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_users_args_doc}
class ListStaticSiteUsersArgs {
  /// The auth provider for the users.
  final pulumi.Input<String> authprovider;
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteUsersArgs].
  /// [authprovider] The auth provider for the users.
  /// [name] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListStaticSiteUsersArgs({
    required this.authprovider,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authprovider': authprovider,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteUsersArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteUsersArgs(
      authprovider: pulumi.Input.fromValue(map['authprovider'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
