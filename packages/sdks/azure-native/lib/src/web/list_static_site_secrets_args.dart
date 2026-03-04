// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_secrets_args_doc}
/// Arguments for listStaticSiteSecrets.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_secrets_args_doc}
class ListStaticSiteSecretsArgs {
  /// Name of the static site.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteSecretsArgs].
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListStaticSiteSecretsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteSecretsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
