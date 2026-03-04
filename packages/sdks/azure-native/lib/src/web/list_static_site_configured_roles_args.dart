// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_configured_roles_args_doc}
/// Arguments for listStaticSiteConfiguredRoles.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_configured_roles_args_doc}
class ListStaticSiteConfiguredRolesArgs {
  /// Name of the static site.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteConfiguredRolesArgs].
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListStaticSiteConfiguredRolesArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteConfiguredRolesArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteConfiguredRolesArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
