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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteSecretsArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

