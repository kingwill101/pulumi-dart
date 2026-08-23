// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_args_doc}
/// Arguments for getStaticSite.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_args_doc}
class GetStaticSiteArgs {
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteArgs].
  /// [name] Name of the static site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetStaticSiteArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
