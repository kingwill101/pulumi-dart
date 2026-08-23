// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_custom_domain_args_doc}
/// Arguments for getStaticSiteCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_custom_domain_args_doc}
class GetStaticSiteCustomDomainArgs {
  /// The custom domain name.
  final pulumi.Input<String> domainName;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteCustomDomainArgs].
  /// [domainName] The custom domain name.
  /// [name] Name of the static site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetStaticSiteCustomDomainArgs({
    required this.domainName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteCustomDomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
