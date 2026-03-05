// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_users_args_doc}
/// Arguments for listStaticSiteUsers.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_users_args_doc}
class ListStaticSiteUsersArgs {
  /// The auth provider for the users.
  final pulumi.Input<String> authprovider;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteUsersArgs].
  /// [authprovider] The auth provider for the users.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListStaticSiteUsersArgs({
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

